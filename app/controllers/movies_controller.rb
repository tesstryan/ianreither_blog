class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by(id: params[:id])
  end

  def new
  end

  def create
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.image = params[:image]
    @movie.link = params[:link]

    if @movie.save
      redirect_to movies_url, notice: "Movie created successfully."
    else
      render 'new'
    end
  end

  def edit
    @movie = Movie.find_by(id: params[:id])
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title]
    @movie.image = params[:image]
    @movie.link = params[:link]

    if @movie.save
      redirect_to movies_url, notice: "Movie updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy

    redirect_to movies_url, notice: "Movie deleted."
  end
end
