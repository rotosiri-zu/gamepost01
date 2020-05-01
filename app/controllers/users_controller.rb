class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
  end

  def listofposts
    @games = Game.where(id: current_user.id).page(params[:page]).per(50).order('created_at DESC')
    @nickname = current_user.nickname
  end
end
