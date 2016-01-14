class StaticPagesController < ApplicationController
  
  layout 'admin', only: [:admin]

  def home
  	@posts = Post.take(3)
  end

  def about
  end

  def contact
  end

  def admin
  	
  end
end
