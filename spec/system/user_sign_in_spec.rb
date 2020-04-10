require 'rails_helper'

RSpec.describe "UserSignIn", type: :system do 
  let(:tset) { create(:user, nickname: 'テストユーザー', email: 'testa@example.com', password: 'testtest', password_confirmation: 'testtest') }
  before do
    user = FactoryBot.create(:user)
  end

  describe '有効なログインの場合' do
    before do
      visit new_user_session_path
      click_button 'ログイン'
    end
    it 'テストユーザーで簡単ログイン' do
      tset = create(:user, nickname: 'テストユーザー', email: 'testa@example.com', password: 'testtest', password_confirmation: 'testtest')
      visit new_user_session_path
      click_button 'カンタンログイン'
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
      within class: 'flash flash__alert' do
        expect(page).to have_content ''
      end
    end
  end
end