require 'rake'
require 'test_helper'

class ResultsTest < ActiveSupport::TestCase

  def setup
    EnglishLeague::Application.load_tasks if Rake::Task.tasks.empty?
    Rake::Task["results:parse_data"].invoke
  end

  test "it creates 20 teams as gives in the file football.dat" do
    assert_equal 20, Team.count
  end
  # test "" do
  # // some logical tests if we had fixtures or factories
  # // for example validality of instaces created through the task
  # end
end
