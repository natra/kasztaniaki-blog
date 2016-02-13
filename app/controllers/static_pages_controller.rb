class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:admin]
  layout 'admin', only: [:admin]

  def home
    @team_selections = TeamSelection.all
  	@posts = Post.take(3)
  end

  def about
    @post = Post.find_by slug: 'historia-kasztaniakow'
  end

  def about_blog
    
  end

  def admin
  	
  end
end
