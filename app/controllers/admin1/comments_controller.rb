class Admin1::CommentsController < ApplicationController
    before_action :find_post, only: [:show,:edit,:update,:destroy]
    def index
      @comments = Comment.all
    end
  
    def new
      @comment = Comment.new
    end
    
    def create
      @comment = Comment.new(post_params)
      if @comment.save
        redirect_to @comment
      else
        render 'new'
      end 
    end
    
    def show
    end
  
    def edit
    end
    
    def update
      if @comment.update(post_params)
        redirect_to @comment
      else
        render 'edit'
      end
    end
  
    def destroy
      @comment.destroy
      redirect_to comments_path
    end
  
  
    private
  
    def find_post
      @comment = Comment.find(params[:id])
    end
  
    def post_params
      params.require(:comment).permit(:title, :body)
    end
  end