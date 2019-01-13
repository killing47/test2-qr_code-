class PostsController < ApplicationController

  def index
  end

  def show
  end

  def edit
  end
  
  def create
    user = User.find(params[:id])
    user = current_user.id. RQRCode::QRCode.new(url_for :controller => 'users', :action => 'show', :only_path => false, :size => 8, :level => :h ).as_svg.html_safe
  end


end
