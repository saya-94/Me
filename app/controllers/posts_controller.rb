class PostsController < ApplicationController

    before_action :authenticate_end_user!, except: [:index]
    before_action :correct_user, only: [:edit, :update]

    def index
        @post = Post.all

        # sex_postカラムの値が'WOMAN' のレコードを取得
        @post_w = Post.where(sex_post: 'WOMAN')

        # sex_postカラムの値が'MAN' のレコードを取得
        @post_m = Post.where(sex_post: 'MAN')

        # sex_postカラムの値が'KIDS' のレコードを取得
        @post_k = Post.where(sex_post: 'KIDS')

    end

    def show
        @post = Post.find(params[:id])
        @end_user = @post.end_user
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.end_user_id = current_end_user.id
            if @post.save
                redirect_to end_user_path(current_end_user.id)
            else
                flash.now[:alert] = '投稿に失敗しました。入力内容を確認してください。'
                render :index
            end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to post_path(@post)
        else
           render :edit
        end
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to end_user_path(current_end_user)
    end


    private
    def post_params
      params.require(:post).permit(:comment, :sex_post, :image, :style_id, :genre_id)
    end

    def correct_user
        post = Post.find(params[:id])
        user = post.end_user
      if current_end_user != user
        redirect_to end_user_path(current_end_user)
      end
    end


end