require 'rails_helper'

RSpec.describe "Games", type: :request do
  describe "GET#index" do
    before do
      get gameposts_path
    end  
    it "投稿したゲームソフトが一覧で表示される" do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET#new" do
    it '投稿ページに移動する' do
      get new_gamepost_path
      expect(response).to have_http_status(302)
    end  
  end

  describe 'POST#create' do
    context 'パラメータが妥当な場合' do
      before do
        user = FactoryBot.create(:user)
        post gameposts_url, params: { game: FactoryBot.attributes_for(:game) }
      end  
      it 'リクエストが成功すること' do
        expect(response.status).to eq 302
      end
    end

    context 'パラメータが不正な場合' do
      it 'リクエストが成功すること' do
        post gameposts_url, params: { game: FactoryBot.attributes_for(:game, :invalid) }
        expect(response.status).to eq 302
      end

      it 'エラーが表示されること' do
        post gameposts_url, params: { game: FactoryBot.attributes_for(:game, :invalid) }
        expect(response.body).to include ''
      end
    end
  end

  describe 'GET #edit' do
    let(:user) { FactoryBot.create :user }

    it 'リクエストが成功すること' do
      get edit_gamepost_url user
      expect(response.status).to eq 302
    end
  end

  describe 'PUT #update' do
    let(:user) { FactoryBot.create :user }

    context 'パラメータが妥当な場合' do
      it 'リクエストが成功すること' do
        put gamepost_url user, params: { game: FactoryBot.attributes_for(:user) }
        expect(response.status).to eq 302
      end

      it 'リダイレクトすること' do
        put gamepost_url user, params: { game: FactoryBot.attributes_for(:user) }
        expect(response).to redirect_to(gameposts_url)
      end
    end 

    context 'パラメータが不正な場合' do
      it 'リクエストが成功すること' do
        put gamepost_url user, params: { game: FactoryBot.attributes_for(:game, :invalid) }
        expect(response.status).to eq 302
      end

      it 'エラーが表示されること' do
        put gamepost_url user, params: { game: FactoryBot.attributes_for(:game, :invalid) }
        expect(response.body).to include ''
      end
    end
  end
  describe 'DELETE #destroy' do
    let!(:user) { FactoryBot.create :user }
  
    it 'リクエストが成功すること' do
      delete gamepost_url user
      expect(response.status).to eq 302
    end

    it 'ゲームソフトが削除されること' do
      expect do
        delete gamepost_url user
      end.to change(User, :count).by(0)
    end

    it 'ゲームソフト一覧にリダイレクトすること' do
      delete gamepost_url user
      expect(response).to redirect_to(gameposts_url)
    end
  end 
end
