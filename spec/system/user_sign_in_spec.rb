require 'rails_helper'

RSpec.describe "UserSignIn", type: :system do 
  before do
    user = FactoryBot.create(:user)
  end

  describe '有効なログインの場合' do
    before do
      visit new_user_session_path
      click_button 'ログイン'
    end
    it 'ルートにリダイレクトされること' do
      visit root_path
    end
  end

  describe '無効なログインの場合' do
    before do
      visit new_user_session_path
      fill_in 'user[nickname]', with: ''
      fill_in 'user[email]', with: ''
      fill_in 'user[password]', with: ''
      click_button 'ログイン'
    end
    it 'ルートにリダイレクトされないこと' do
      expect(current_path).to_not eq(root_path)
    end
    it 'エラーメッセージが表示されること' do
      expect(page).to have_content 'ニックネーム、メールアドレスまたはパスワードが違います。'
    end
  end  
end  