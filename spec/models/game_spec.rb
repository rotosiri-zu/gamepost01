# require 'rails_helper'

# RSpec.describe Game, type: :model do
#   describe '#create' do
#     let(:game) { FactoryBot.create(:game) }
#     let(:user) { FactoryBot.create(:user) }

#     it "有効なファクトリをもつ" do
#       expect(FactoryBot.build(:game, user: user)).to be_valid
#     end

#     it '画像、ゲーム名、プラットフォーム、ジャンル、ゲームの説明、user_idがあれば保存できる' do
#       expect(build(:game, user_id: user.id)).to be_valid
#     end

#     it 'ゲーム名が空の場合登録できない' do
#       game = build(:game, name: nil)
#       game.valid?
#       expect(game.errors).to be_added(:name, :blank)
#     end

#     it '画像が空の場合登録できない' do
#       game = build(:game, image: nil)
#       game.valid?
#       expect(game.errors).to be_added(:image, :blank)
#     end

#     it 'プラットフォームが空の場合登録できない' do
#       game = build(:game, platform: nil)
#       game.valid?
#       expect(game.errors).to be_added(:platform, :blank)
#     end

#     it 'ジャンルが空の場合登録できない' do 
#       game = build(:game, genre: nil)
#       game.valid?
#       expect(game.errors).to be_added(:genre, :blank)
#     end

#     it 'ゲームの説明が空の場合登録できない' do 
#       game = build(:game, text: nil)
#       game.valid?
#       expect(game.errors).to be_added(:text, :blank)
#     end
#   end 
# end
