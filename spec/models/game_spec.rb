require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:user) { create(:user) }
  describe '#create' do
    it '画像、ゲーム名、プラットフォーム、ジャンル、ゲームの説明、user_idがあれば保存できる' do
      expect(build(:game, user_id: user.id)).to be_valid
  end
 end 
end
