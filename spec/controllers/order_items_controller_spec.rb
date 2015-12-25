require 'rails_helper'

RSpec.describe OrderItemsController, type: :controller do

  describe "POST #create" do
    it 'does not allow to create an order item exceeding a ticket maximum quantity' do
      ticket 
    end    
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

end
