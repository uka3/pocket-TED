class BooksController < ApplicationController
  def index


  @categories = Category.all


  @videos = Video.includes(:category)
                .references(:category)

  end

  def show

  @categories = Category.all

  @video = Video.includes(:category)
           .references(:category)
  end

end
