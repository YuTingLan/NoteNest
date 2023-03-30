class PostsController < ApplicationController
    def index
        # 倒序排列
        @posts = Post.order(created_at: :desc)
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(params.require(:post).permit(:name, :title, :content, :color))
        if @post.save
            redirect_to posts_path(@post), notice: '新增成功'
        else
            render :new
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to post_path(@post), notice: '已更新成功'
        else
            render :edit
        end
    end

    def show
        @post = Post.find(params[:id])
    end
   
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, notice: '已成功刪除'
    end

    private
    def post_params
        params.require(:post).permit(:name, :title, :content, :color)
    end

end

