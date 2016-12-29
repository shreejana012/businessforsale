class User::BusinessListingsController < ApplicationController
  def index
    @business_listing = current_user.business_listings
  end
end
