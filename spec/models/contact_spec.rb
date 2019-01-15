require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "should have a factory" do
    expect(FactoryBot.build(:contact)).to be_valid  
  end
  
  context "Should Respond" do
    it { should respond_to(:name) }
    it { should respond_to(:email) }
    it { should respond_to(:cellphone) }
    it { should respond_to(:address) }
    it { should respond_to(:birthdate) }
  end
  
  context "Validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:cellphone) }
    it { should validate_presence_of(:birthdate) }
  end  
end
