class GenresController < ApplicationController

    def index
        @genres = Genre.all
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params)
        @genre.save
        flash.now[:notice] = "ジャンルを追加しました。"
    end

    def update
    end

    def destroy
        genre = Genre.find(params[:id])
        genre.destroy
        redirect_to genres_path, :alert => "ジャンルを削除しました。"
    end


    private
    def genre_params
        params.require(:genre).permit(:genre)
    end



end




def destroy
    
end

