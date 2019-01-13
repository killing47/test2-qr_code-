class UsersController < ApplicationController

  def qr_code
    @qr = RQRCode::QRCode.new(url_for :controller => 'users', :action => 'show', :only_path => false, :size => 8, :level => :h ).as_svg.html_safe
  end

  def show
    @user = User.find(params[:id])
    qr_code
    respond_to do |format|
    format.html
    format.pdf do
      render pdf: "sample",   # PDF名
      template: "partial/_qr_code.html.erb" # viewを対象にする
    end

  end
  end

  def create

  end

  def update
    if current_user.role == 0
      user = User.find(params[:id])
      user.role = 1
      qr =  current_user.RQRCode::QRCode.new(url_for :controller => 'users', :action => 'show', :only_path => false, :size => 8, :level => :h ).as_svg.html_safe

      user.save

    end
  end

  def index
  end

  private

  def user_params
  end
end
