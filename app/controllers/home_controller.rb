class HomeController < ApplicationController
  def index
    @list_posts = Post.all
  end
end
