class Dog < ActiveRecord::Base
	validates :name, :breed, :dob, presence: true
end
