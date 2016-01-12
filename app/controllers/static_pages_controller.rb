class StaticPagesController < ApplicationController
  layout 'app2', only: [:about, :contact]

  def home
  	@posts = Post.take(3)
  end

  def about
  end

  def contact
  end
end
