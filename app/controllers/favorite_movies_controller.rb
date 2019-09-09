class FavoriteMoviesController < ApplicationController
    before_action :caca

    def create
        @movie.favorite = true
        @movie.save
        redirect_to movies_path, notice: "pelicula #{@movie.name}  agregada a favoritos"
    end

    def destroy
        @movie.favorite = false
        @movie.save
        redirect_to movies_path, notice: "pelicula #{@movie.name} se a removido de favoritos"
    end

    private

    def caca
        @movie = Movie.find(params[:id])
    end


end
