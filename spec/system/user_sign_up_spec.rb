# require 'rails_helper'

# RSpec.describe "UserSignUP", type: :system do 
#   before do
#     visit new_user_registration_path
#   end

#   describe '有効なユーザの場合' do
#     before do
#       fill_in 'user[nickname]', with: 'テストユーザー'
#       fill_in 'user[email]', with: 'sample@example.com'
#       fill_in 'user[password]', with: 'password'
#       fill_in 'user[password_confirmation]', with: 'password'
#       click_button '新規登録'
#     end
#     it 'ルートにリダイレクトされること' do
#       expect(current_path).to eq(root_path)
#     end
#   end

#   describe '無効なユーザーの場合' do
#     before do
#       click_button '新規登録'
#     end
#     it 'ルートにリダイレクトされないこと' do
#       expect(current_path).to_not eq(root_path)
#     end
#     it 'ニックネームのエラーメッセージが表示されること' do
#       within '#error_explanation' do
#         expect(page).to have_content ''
#       end
#     end
#     it 'メールアドレスのエラーメッセージが表示されること' do
#       within '#error_explanation' do
#         expect(page).to have_content ''
#       end  
#     end
#     it 'パスワードのエラーメッセージが表示されること' do
#       within '#error_explanation' do
#         expect(page).to have_content ''
#       end  
#     end
#     it 'パスワード確認のエラーメッセージが表示されること' do
#       within '#error_explanation' do
#         expect(page).to have_content ''
#       end  
#     end   
#   end 
# end 