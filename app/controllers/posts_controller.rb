class PostsController < ApplicationController
 




  def index
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

  def edit
  end


end
