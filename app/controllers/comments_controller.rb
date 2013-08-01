class CommentsController < ApplicationController


  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @link = Link.find(params[:comment].delete(:link_id))
    @comment = @link.comments.build(params[:comment])
    flash[:notice] = @comment.errors.messages unless @comment.save
    redirect_to @link
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params[:comment])

    render :show
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.delete
    redirect_to comments_path
  end

end
