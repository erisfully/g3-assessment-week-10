class GifsController < ApplicationController

  def index
    @gifs = Gif.new
  end

  def new
    @gif = Gif.new
  end

end
