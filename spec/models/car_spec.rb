require 'spec_helper'

describe Car, "validations" do

  it { should validate_presence_of(:model) }
  it { should validate_presence_of(:brand) }
  it { should validate_presence_of(:car_type) }
  it { should validate_presence_of(:color) }
  it { should validate_presence_of(:kms) }
  it { should validate_presence_of(:plates) }
  it { should belong_to(:client) }

end

describe Car, "methods" do
  let(:car) { car = FactoryGirl.build(:car, kms: 12) }

  it 'returns the kms pluralized as a string' do
    expect(car.show_kms).to eql("12 kms")
  end
end
