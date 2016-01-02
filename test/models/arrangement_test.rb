require 'test_helper'

class ArrangementTest < ActiveSupport::TestCase

  test "arrangement exists" do
  	arrangement = Arrangement.new(user_id: 1, timeslot_id: 540961884)
  	assert_not arrangement.save
  end

  test "arrangement does not exist" do
  	arrangement = Arrangement.new(user_id: 1, timeslot_id: 3)
  	assert_equal true, arrangement.save
  end

  # test "this should fail" do
  # 	arrangement = Arrangement.new(user_id: 1, timeslot_id: 1)
  # 	assert_equal true, arrangement.save
  # end
end
