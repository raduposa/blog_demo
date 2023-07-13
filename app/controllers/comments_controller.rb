class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_post

    def create
        @post = Post.find(params[po:post_id])
        @comment = @post.comments.create(comment_params)
        @comment.user = current_user
        if @comment.save
            flash[:notice] = "Comment has been created "
            redirect_topost_path(@post)

        else
            flash[:alert] = "Comment has not been created "
            redirect_topost_path(@post)
    end

    def destroy
       @comment = @post.comments.find(params[:id])
       @comment.destroy
       redirect_to post_path(@post) 
    end

    private 
    def set_posst
        @post = Post.find(params[po:post_id])
        
    end

    def comments_params
        params.require(:comment).permit(:body)
        
    end
end
