class PostsController < ApplicationController

  def index
    @posts = Post.all
    @user = User.find_by(id: params[:id])
    @book = Book.last
    @movie = Movie.last
    @song = Song.last
    @user = User.last
    @characteristic = Characteristic.last
    @contact = Contact.last
    @article = Article.last
    @quote = Quote.last
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.new
    @post.header = params[:header]
    @post.sub_header = params[:sub_header]
    @post.date = params[:date]
    @post.content = params[:content]

    if @post.save
      redirect_to posts_url, notice: "Post created successfully."
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.header = params[:header]
    @post.sub_header = params[:sub_header]
    @post.date = params[:date]
    @post.content = params[:content]

    if @post.save
      redirect_to posts_url, notice: "Post updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy

    redirect_to posts_url, notice: "Post deleted."
  end
end
