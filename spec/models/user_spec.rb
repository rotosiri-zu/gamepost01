# require 'rails_helper'

# RSpec.describe User, type: :model do
  
#   it "有効なファクトリをもつ" do
#     expect(FactoryBot.build(:user)).to be_valid
#   end

#   it 'ニックネーム、メールアドレス、パスワード、パスワード確認があれば保存できる' do 
#     user = build(:user)
#     expect(user).to be_valid
#   end

#   it 'ニックネームが空では登録できない' do
#     user = build(:user, nickname: nil)
#     user.valid?
#     expect(user.errors).to be_added(:nickname, :blank)
#   end

#   it 'メールアドレスが空では登録できない' do
#     user = build(:user, email: nil)
#     user.valid?
#     expect(user.errors).to be_added(:email, :blank)
#   end

#   it 'パスワードが空では登録できない' do 
#     user = build(:user, password: nil)
#     user.valid?
#     expect(user.errors).to be_added(:password, :blank)
#   end

#   it 'パスワード確認が空では登録できない' do
#     user = build(:user, password_confirmation: nil)
#     user.valid?
#     expect(user.errors).to be_added(:password_confirmation, :blank)
#   end
# end
