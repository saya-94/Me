class PostsController < ApplicationController

    def index
        @post = Post.all
    end

    def show
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.end_user_id = current_end_user.id
            if @post.save
                redirect_to end_user_path(@post)
            else
                flash.now[:alert] = '投稿に失敗しました。入力内容を確認してください。'
                render :index
            end
    end

    def edit
    end

    def update
    end

    def destroy
    end


    private
    def post_params
      params.require(:post).permit(:comment, :sex_post)
    end

end