require 'spec_helper'

describe Entrevistado do
  
  it "has a valid factory" do
    entrevistado = FactoryGirl.create(:entrevistado)
    expect(entrevistado).to be_valid
  end

  it { should validate_presence_of(:nome) }  
  it { should validate_presence_of(:email) }
  it { should have_many(:respostas) }
end
