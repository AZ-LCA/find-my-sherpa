class PostsController < ApplicationController
  before_action :authenticate_user!
  def new
      @post = Post.new
  end
  def create
      @post = Post.new(post_params)
  
      respond_to do |format|
        if @post.save
          format.html { redirect_to post_url(@post), notice: "Post was successfully created." }
          format.json { render :show, status: :created, location: @post }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
  end

  def show
      @post = Post.find(params[:id])
      @user = User.find(@post.user_id).username
      @allUsers = User.all
      @comments = Comment.where(:post_id => params[:id])
      @newComment = Comment.new
  end

  def edit
      @post = Post.find(params[:id])
  end
  
  def update
      @post = Post.find(params[:id])
      respond_to do |format|
        if @post.update(post_params)
          format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
          format.json { render :show, status: :ok, location: @post }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
  end
  def destroy
      @post = Post.find(params[:id])
      @post.destroy
  
      respond_to do |format|
        format.html { redirect_to pages_main_path, notice: "Post was successfully destroyed." }
        format.json { head :no_content }
      end
  end
  private

  def post_params
      params.require(:post).permit(:user_id, :activity, :info, :search)
  end
  

end
