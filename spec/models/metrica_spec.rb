require 'spec_helper'

describe Metrica do
  
  it "has a valid factory" do
    metrica = FactoryGirl.create(:metrica)

    expect(metrica).to be_valid
  end

end
