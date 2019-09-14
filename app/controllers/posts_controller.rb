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
                redirect_to post_path(@post), notice: 'You have creatad book successfully.'
            else
                @posts = Post.all
                render :index
            end
    end

    def edit
    end

    def update
    end

    def destroy
    end

end
