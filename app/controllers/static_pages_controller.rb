class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:admin]
  layout 'admin', only: [:admin]

  def home
    @team_selections = TeamSelection.all
  	@posts = Post.take(3)
  end

  def about
  end

  def admin
  	
  end
end
