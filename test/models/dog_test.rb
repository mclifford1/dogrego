require 'test_helper'

class DogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	test "dog attributes must not be empty" do
		dog = Dog.new
		assert dog.invalid?
		assert dog.errors[:name].any?
		assert dog.errors[:breed].any?
		assert dog.errors[:dob].any?
	end

end
