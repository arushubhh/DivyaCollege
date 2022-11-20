class College < ApplicationRecord
	has_many :images, as: :imageable
	accepts_nested_attributes_for :images
	has_one :college_eligibility_criterium
	accepts_nested_attributes_for :college_eligibility_criterium
end
