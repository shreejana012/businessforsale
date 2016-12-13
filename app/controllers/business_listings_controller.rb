class BusinessListingsController < ApplicationController
		before_action :authenticate_user!, only: [:new, :create]

		def new
			@business_listing = BusinessListing.new
		end

		def create
            @business_listing = current_user.business_listings.build(business_params)
            @business_listing.save
            if @business_listing.valid?
              redirect_to root_path
        	else
        	  render :new
            end

		end

		def show
			@business_listings = BusinessListing.find(params[:id])
		end

		def edit
			@business_listings = BusinessListing.find(params[:id])
		end
		private

		def business_params
			params.require(:business_listing).permit(
				:photo,
				:user_id, 
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
				:reason_for_selling)
		end


end
