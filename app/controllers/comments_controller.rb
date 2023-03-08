class CommentsController < ApplicationController
    def new
    end
    def create
        puts "=================================="
        puts comment_params
        puts "=================================="
        @post = Post.find(params[:post_id])
        @comment = Comment.create(comment_params)
        redirect_to post_path(@post)
    end
    def edit
        @comment = Comment.find(params[:id, :post_id])
    end
    def update
    end
    def destroy
        @post = Post.find(params[:post_id])
        @comment = Comment.find(params[:id])
        @comment.destroy
    
        respond_to do |format|
          format.html { redirect_to post_path(@post), notice: "Comment was successfully destroyed." }
          format.json { head :no_content }
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :post_id, :body)
    end
end
