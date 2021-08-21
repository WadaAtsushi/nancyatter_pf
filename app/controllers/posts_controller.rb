class PostsController < ApplicationController
  def top
    @nancyatterapp = Nancyatterapp.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = @current_menbur.posts.build(post_params)
    @post.user_id = @current_user.id
    @post.nancyatterapp_id =  @current_app.id
    
    if @post.save
      flash.notice = "投稿しました。"
      redirect_to post_index_path
    else
      flash.notice = "投稿失敗しました。"
      render('posts/new')
    end
  end

  

  def index
    @posts = Post.where(nancyatterapp_id: @current_app.id).all.page(params[:page]).per(10)
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comments = @post.comments
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    

    if @post.update(post_params)
      flash.notice = "編集しました"
      redirect_to post_show_path(@post.id)
    else
      flash.notice = "編集できませんでした"
      render("posts/edit")
    end
    
  end


  def destroy
    @post = Post.find_by(id: params[:id])
    @post.del_flag = 1
    @post.save
    flash.notice = "削除しました"
    redirect_to post_index_path
  end

  

  private
    def post_params
      params.require(:post).permit(:title, :postcategory_id, :content, :post_image)
    end

end
