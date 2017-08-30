class FavoritesController < ApplicationController
    before_action :authenticate_user!
    load_and_authorize_resource  only: [:new, :create, :destroy]


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

    def fav_params
      fav = params.require(:user).permit(:username)
      user_id = { user_id: current_user.id }
      fav.merge(user_id)
    end

end
