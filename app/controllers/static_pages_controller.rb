class StaticPagesController < ApplicationController
  def home
  	@posts = Post.take(3)
  end

  def about
  end

  def contact
  end
end
