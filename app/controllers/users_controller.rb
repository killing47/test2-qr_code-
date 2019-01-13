class UsersController < ApplicationController
  
  def qr_code
   @qr = RQRCode::QRCode.new(url_for :controller => 'users', :action => 'show', :only_path => false, :size => 8, :level => :h )
  end
	
  def show
    qr_code
    respond_to do |format|
    format.html
    format.pdf do
      render pdf: "sample",   # PDF名
             template: "posts/show.html.erb" # viewを対象にする
    end
  end
  end

  def index
  end
end
