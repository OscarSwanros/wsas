require 'spec_helper'

describe ClientsController do
  let(:user) { create :user }

  before do
    sign_in user
  end

  describe "POST create" do
    context "with valid attributes" do
      it 'creates a new client' do
        expect{
          post :create, client: FactoryGirl.attributes_for(:client)
        }.to change(Client, :count).by(1)
      end

      it 'redirects to the new client' do
        post :create, client: FactoryGirl.attributes_for(:client)
        expect(response).to redirect_to Client.last
      end
    end
  end
end
