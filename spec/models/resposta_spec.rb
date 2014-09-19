require 'spec_helper'

describe Resposta do
  it "has a valid factory" do
    resposta = FactoryGirl.create(:resposta)

    expect(resposta).to be_valid
  end

  it { should belong_to(:entrevistado) }
  it { should belong_to(:metrica) }
end
