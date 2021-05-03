class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams, id: false do |t|
      t.string  "standing", primary_key: true
      t.string  "name"
      t.integer "played"
      t.integer "won"
      t.integer "lost"
      t.integer "drawn"
      t.integer "goals_for"
      t.integer "goals_against"
      t.integer "points"
      t.timestamps
    end
  end
end
