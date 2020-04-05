# require 'rails_helper'

# RSpec.describe "games", type: :system do 
#   let(:user_a) { create(:user, nickname: 'ユーザーA', email: 'a@example.com') }
#   let(:user_b) { create(:user, nickname: 'ユーザーB', email: 'b@example.com') }
 
#   shared_examples_for 'ユーザーAが作成したゲームソフトの一覧が表示される' do
#     it { expect(page).to have_content 'spec/fixtures/618YoWFaSiL.jpg, ゲームA' }
#   end

#   describe '一覧表示機能' do
#     context 'ユーザーAがログインしているとき' do
#       let(:login_user) { user_a }

#       before do
#       visit new_user_session_path
#       fill_in 'user[nickname]', with: login_user.nickname
#       fill_in 'user[email]', with: login_user.email
#       fill_in 'user[password]', with: login_user.password
#       click_button 'ログイン'
#       visit root_path
#       end
#       it '新規投稿' do
#         click_link '投稿'
#         visit new_gamepost_path
#       end  
#     end

#   end
# end  