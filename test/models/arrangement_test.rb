require 'test_helper'

class ArrangementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "arrangement exists" do
  	arrangement = Arrangement.new(user_id: 1, timeslot_id: 1)
  	assert_not arrangement.save
  end
end
