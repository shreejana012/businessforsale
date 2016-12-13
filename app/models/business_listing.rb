class BusinessListing < ApplicationRecord
	mount_uploader :photo, PhotoUploader
	belongs_to :user
	validates :user_id,
			 	:title, 
				:location, 
				:revenue, 
				:cash_flow, 
				:business_description, 
				:property_size, 
				:years_estd, 
				:property_type, 
				:business_location, 
				:premise_details, 
				:competition, 
				:expansion_potential, 
				:employees, 
				:trading_hours, 
				:support_training, 
				:financing_available, 
				:reason_for_selling, presence: true
				
end
