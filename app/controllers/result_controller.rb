class ResultController < ApplicationController
  def index
    #run rake results:parse_data when nothing shows up
    @teams = Team.all
    @id_of_team_to_be_highlighted = get_id_of_team_with_minimum_difference
  end

  def raw_data
    render file: 'public/football.dat'
  end
  
  private
  def get_id_of_team_with_minimum_difference
    @teams.min_by{|x| (x.goals_for - x.goals_against).abs}.id
  end
end
