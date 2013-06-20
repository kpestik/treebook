require 'test_helper'

class StatusTest < ActiveSupport::TestCase
	test "a status should not save without a content" do
		status = Status.new
		assert !status.save
		assert !status.errors[:content].empty?
	end

	test "a status should not save without a user id" do
		status = Status.new
		assert !status.save
		status.content = "This is a test case"
		status.user_id = "This is a test user"
		puts status.errors.inspect
		assert !status.errors[:user_id].empty?
	end
end
