require 'rails_helper'

RSpec.describe Review, type: :model do

  it '有効なファクトリをもつ' do
    expect(FactoryBot.build(:review)).to be_valid
  end

  it 'ニックネーム、評価、レビュー、product_idがあれば保存できる' do
    review = build(:review)
    expect(review).to be_valid
  end

  it 'ニックネームが空の場合登録ができない' do
    review = build(:review, nickname: nil)
    review.valid?
    expect(review.errors).to be_added(:nickname, :blank)
  end

  it '評価が空の場合登録できない' do
    review = build(:review, rate: nil)
    review.valid?
    expect(review.errors).to be_added(:rate, :blank)
  end

  it 'レビューが空の場合登録できない' do
    review = build(:review, review: nil)
    review.valid?
    expect(review.errors).to be_added(:review, :blank)
  end

  it 'product_idが空の場合登録できない' do
    review = build(:review, product_id: nil)
    review.valid?
    expect(review.errors).to  be_added(:product_id, :blank)
  end
end
