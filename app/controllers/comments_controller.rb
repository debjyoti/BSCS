class CommentsController < ApplicationController

  def create
    params[:comment][:user_id] = current_user.id
    @article = Article.find(params[:article_id])

    respond_to do |format|
      if @article.comments.create(params[:comment])
        @comment = @article.comments.new
        format.html { redirect_to article_path(@article) }
        format.js { @comments = @article.comments }
      end
    end
  end

  def edit
    @article = Article.find(params[:article_id])
    @comment = Comment.find(params[:id]) 

    respond_to do |format|
      format.html
      format.js 
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @article = @comment.article
    @comments = @article.comments
    
    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to :back, notice: 'Comment was successfully updated.' }
        format.js
        format.json { head :no_content }
      else
        format.html { render action: "edit", notice: @comment.errors }
        format.js {render action: "edit"}
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @deleted_comment_id = @comment.id

    respond_to do |format|
      if @comment.destroy
        format.html { redirect_to (:back), notice: 'Comment got deleted' }
        format.js 
      end
    end
  end

  def index
    @comments = Comment.all
  end
end
