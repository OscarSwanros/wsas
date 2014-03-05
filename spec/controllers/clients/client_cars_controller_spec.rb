require 'spec_helper'


describe Clients::CarsController do
  let(:client) { create(:client) }
  let(:car) { build(:car) }

  it 'creates a car for a user' do
    post :create, car: car
    expect(response.url).to eql(client_cars_url client)
  end
end
