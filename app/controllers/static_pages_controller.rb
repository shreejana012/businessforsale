class StaticPagesController < ApplicationController
	def index
     @business_listing = BusinessListing.all
	end
end
