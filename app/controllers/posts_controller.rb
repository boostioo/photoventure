class PostsController < ApplicationController
    def index
        @post = Post.all
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.create(post_params)
        if @post.save
            flash[:success] = "Post created."
            redirect_to @post
        else
            flash[:alert] = "Post not created."
            render :new
        end
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
      def edit
        @post = Post.find(params[:id])
      end
      
      def update
        @post = Post.find(params[:id])
      
        if @post.update(post_params)
          flash[:success] = "Post updated."
          redirect_to @post
        else
          flash[:alert] = "Post not updated."
          render :edit
        end
      end
    
      def destroy
        @post = Post.find(params[:id])
        @post.destroy
      
        flash[:alert] = "Post deleted."
        redirect_to Post_path
      end
    
    private
    
    def post_params
      params.require(:post).permit(:description, :image)
    end
    
    def set_post
        @post = Post.find(params[:id])
        rescue ActiveRecord::RecordNotFound
        flash[:alert] = "The post you were looking for could not be found."
        redirect_to post_path
    end
end
