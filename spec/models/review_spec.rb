require 'rails_helper'

RSpec.describe Review, type: :model do

  it "有効なファクトリをもつ" do
    expect(FactoryBot.build(:review)).to be_valid
  end
  
end
