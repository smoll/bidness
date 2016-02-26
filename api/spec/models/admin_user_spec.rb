require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  it "should have a factory" do
    expect(FactoryGirl.build(:admin_user)).to be_valid
  end
end
