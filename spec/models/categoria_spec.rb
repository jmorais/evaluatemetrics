require 'spec_helper'

describe Categoria do
  it "has a valid factory" do
    categoria = FactoryGirl.create(:categoria)

    expect(categoria).to be_valid
  end

  it { should validate_presence_of(:nome) }
  it { should have_many(:metricas) }

end
