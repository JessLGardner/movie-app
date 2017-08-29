class MoviesController < ApplicationController

    def index
        @movies = Movie.all
    end

    def new
        @movie = Movie.new
    end

    def show
        @movie = Movie.find(params[:id])
    end

    def create
        @movie = Movie.create movie_params
        redirect_to movie_path(@movie)
    end

    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        @movie = Movie.find(params[:id])
        @movie.update movie_params
        redirect_to movie_path(@movie)
    end

    def destroy

    end

    private
    def movie_params
        params.require(:movie).permit(:title, :genre, :synopsis)
    end

end
