class GifsController < ApplicationController

  def index
    @gifs = Gif.all
  end

  def new
    @gif = Gif.new
  end

  def create
    @gif = Gif.new(
      url: params[:gif][:url],
      title: params[:gif][:title]
    )
    if @gif.save
      flash[:notice] = "gif created successfully"
      redirect_to root_path
    else
      render "new"
    end
  end

end
