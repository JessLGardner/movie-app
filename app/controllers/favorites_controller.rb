class FavoritesController < ApplicationController
    before_action :authenticate_user!

    def index
        @favorites = Favorite.all
    end

    def new
        @favorite = Favorite.new
    end

    def create
        @favorite = Favorite.create movie_params
        redirect_to movie_path(@movie)
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
        redirect_to movies_path
    end

    private
    def movie_params
        params.require(:movie).permit(:title, :year, :genre, :synopsis, :picture)
    end

end
