class ReviewsController < ApplicationController
  
  def create
    @reviews = Review.create(create_params)
    if @reviews.save
      flash[:success] = 'レビューを投稿しました'
      redirect_to root_path
    else
      flash[:danger] = 'レビューの投稿に失敗しました、ニックネーム、タイトル、レビューを記入したか確認してください'
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @reviews = Review.find_by(params[:id]).destroy
    flash[:danger] = 'レビューを削除しました'
    redirect_back(fallback_location: root_path)
  end

  private
  def create_params
    params.require(:review).permit(:nickname, :rate, :title, :review).merge(game_id: params[:game_id], user_id: current_user.id)
  end

end
