require 'rails_helper'

RSpec.describe "UserSignUP", type: :system do 
 
  describe '有効なユーザーの場合' do
    it 'a' do
      fill_in 'ニックネーム', with: 'テストユーザー'
      fill_in 'user_email', with: 'test@example.com'
      fill_in 'user_password', with: '00000000'
      fill_in 'user_password_confirmation', with: '00000000'
      click_button '新規登録'
    end
  end

end  