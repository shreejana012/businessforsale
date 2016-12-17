class StaticPagesController < ApplicationController

	def index
     @business_listing = BusinessListing.all.where(approve: true)
	end
end
