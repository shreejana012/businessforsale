require 'rails_helper'

RSpec.describe BusinessListingsController, type: :controller do
  describe "GET #index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template :index
    end
  end
  describe"GET #show" do
    it"renders the show template" do
      user = FactoryGirl.create(:user)
      sign_in user
      business_listing = FactoryGirl.create(:business_listing, user_id: user.id)
      get :show, id: business_listing.id
      expect(response).to render_template :show
    end
  end
  describe "GET #new" do
        it "renders the new template"do
          user = FactoryGirl.create(:user)
          sign_in user
          get :new
          expect(response).to render_template :new
        end
      end
  describe "POST #create" do
    context"with valid attributes" do
      it "creates new business listing" do
        user = FactoryGirl.create(:user)
        sign_in user
        expect{
          post :create, business_listing: FactoryGirl.attributes_for(:business_listing, user_id: user.id)
        }.to change{BusinessListing.count}.by(1)

      end
      it "redirects to the root path"do
        user = FactoryGirl.create(:user)
        sign_in user
          post :create, business_listing: FactoryGirl.attributes_for(:business_listing, user_id: user.id)
          expect(response).to redirect_to root_path

      end

    end
    context"with invalid attributes" do
      it "does not create new business listing" do
        user = FactoryGirl.create(:user)
        sign_in user
        expect{
        post :create, business_listing: FactoryGirl.attributes_for(:invalid_business_listing, user_id: user.id)
      }.to change{BusinessListing.count}.by(0)

      end
      it "renders the new template" do
        user = FactoryGirl.create(:user)
        sign_in user
        post :create, business_listing: FactoryGirl.attributes_for(:invalid_business_listing, user_id: user.id)
        expect(response).to render_template :new

      end
    end
  end

end
