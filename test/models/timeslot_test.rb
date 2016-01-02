require 'test_helper'

class TimeslotTest < ActiveSupport::TestCase
	test "capacity remaining" do
		assert_equal 2, Timeslot.second.remaining_spots
	end
end
