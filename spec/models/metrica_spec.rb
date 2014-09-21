require 'spec_helper'

describe Metrica do
  
  it "has a valid factory" do
    metrica = FactoryGirl.create(:metrica)

    expect(metrica).to be_valid
  end

  it { should belong_to(:categoria) }
  it { should have_many(:respostas) }

end
