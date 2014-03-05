require 'spec_helper'

describe Client, 'validations' do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:zip) }
  it { should validate_presence_of(:phone) }
  it { should validate_presence_of(:rfc) }
  it { should have_many(:cars) }
end
