class CommentsController < ApplicationController
  before_action :set_post

  def index
    @comments = @post.comments
    # It went to implicit rendering
    # render :layout => false
    # render :json => @comments
    # render :layout => false

    respond_to do |format|
      format.html {render 'index.html', :layout => false}
      format.js {render 'index.js', :layout => false}
    end
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end
end
