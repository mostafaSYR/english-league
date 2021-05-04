namespace :results do

  desc "it parses the data from the gives file football.dat in public dir"

  task parse_data: :environment do
    Team.delete_all
    input = File.open('public/football.dat', File::RDONLY) {|f| f.read}
    input.lines.map(&:split).drop(1).each_with_index do |line, index| 
      next if index == 17
      Team.create(
        standing: line[0].to_i,
        name: line[1],
        played: line[2].to_i,
        won: line[3].to_i,
        lost: line[4].to_i,
        drawn: line[5].to_i,
        goals_for: line[6].to_i,
        goals_against: line[8].to_i,
        points: line[9].to_i,
      )
    end
  end

end
