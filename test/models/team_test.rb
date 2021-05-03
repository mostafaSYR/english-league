require "test_helper"

class TeamTest < ActiveSupport::TestCase
  test "it creates a new instance from teams" do
    team = Team.new
    assert team.valid?
  end
end
