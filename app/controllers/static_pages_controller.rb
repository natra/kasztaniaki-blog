class StaticPagesController < ApplicationController
  
  layout 'admin', only: [:admin]

  def home
    @team_selections = TeamSelection.all
  	@posts = Post.take(3)
  end

  def about
  end

  def contact
  end

  def admin
  	
  end
end
