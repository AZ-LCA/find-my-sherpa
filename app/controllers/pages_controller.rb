class PagesController < ApplicationController
  before_action :authenticate_user!,  only: [:main, :profile, :edit_user]
  def home
  end
  def main
      @users = User.all
      if params[:query].present?
          @posts = Post.where("activity LIKE ?", "%#{params[:query]}%")
        else
          @posts = Post.all
        end
  end
  def profile
  end
  def edit_user
  end
end
