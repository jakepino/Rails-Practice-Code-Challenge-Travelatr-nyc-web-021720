class PostsController < ApplicationController

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        if @post.valid?
            redirect_to post_path
        else
            flash[:errors] = @post.errors.full_messages
            redirect_to new_post_path
        end

    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.valid?
            redirect_to post_path
        else
            flash[:errors] = @post.errors.full_messages
            redirect_to edit_post_path
        end
    end
end
