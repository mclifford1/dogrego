class Dog < ActiveRecord::Base
	validates :name, :breed, :dob, presence: true
	#has_one: dog_owner

	#before_destroy :ensure_not_referenced_by_any_dog_owner

	def get_expiry_date
		@record = DogOwner.find_by(dog_id: id)
		if @record.registeredtill
			return @record.registeredtill.to_formatted_s(:long)
		else
			return "Never"
		end
	end

	private

	# Check that we are not going to break a reference
	def ensure_not_referenced_by_any_dog_owner
		if dog_owner?
			errors.add(:base, 'Dog owner present')
			return false
		else
			return true
		end
	end
end
