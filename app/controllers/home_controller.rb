class HomeController < ApplicationController
  def index
    @posts = Post.paginate(page: params[:page], per_page: 9).order(created_at: :desc)
  end
end
