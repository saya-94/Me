class GenresController < ApplicationController

    def index
        @genres = Genre.page(params[:page]).reverse_order
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params)
        if @genre.save
            redirect_to genre_path(@genre)
            flash.now[:notice] = "ジャンルを追加しました。"
        else
            @genres = Genre.all
            render :index, :alert => "ジャンルを追加できませんでした。"
        end
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        # 編集後、indexに遷移。ダメだったら、編集画面にレンダー。
        if @genre.update(genre_params)
            redirect_to genres_path
            flash.now[:notice] = "ジャンルを変更しました。"
            else
            render :edit
            end
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

