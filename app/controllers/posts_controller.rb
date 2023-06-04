class PostsController < ApplicationController
    before_action :find_params, only: [:show, :edit, :update, :destroy]

    def index
        # 倒序排列
        @posts = Post.order(created_at: :desc)
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to posts_path(@post), notice: '新增成功'
        else
            render :new
        end
    end
    def edit
    end
    def show
    end
    def update
        if @post.update(post_params)
            redirect_to post_path(@post), notice: '已更新成功'
        else
            render :edit
        end
    end

    def destroy
        @post.destroy
        redirect_to posts_path, notice: '已成功刪除'
    end

    private
    def find_params
        @post = Post.find(params[:id])
    end
    def post_params
        params.require(:post).permit(:name, :title, :content, :color, :avatar, images: [])
    end

end

