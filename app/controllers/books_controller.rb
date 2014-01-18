class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  def new
  end

  def create
    @book = Book.new
    @book.title = params[:title]
    @book.author = params[:author]
    @book.image = params[:image]
    @book.link = params[:link]

    if @book.save
      redirect_to books_url, notice: "Book created successfully."
    else
      render 'new'
    end
  end

  def edit
    @book = Book.find_by(id: params[:id])
  end

  def update
    @book = Book.find_by(id: params[:id])
    @book.title = params[:title]
    @book.author = params[:author]
    @book.image = params[:image]
    @book.link = params[:link]

    if @book.save
      redirect_to books_url, notice: "Book updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy

    redirect_to books_url, notice: "Book deleted."
  end
end
