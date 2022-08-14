class BooksController < ApplicationController
  def new
    @book = Book.new
    @books = Book.all
    @book = Book.find(params[:id])
    book.save
    redirect_to book_path(book.id)
  end

  def create
    @books = Book.all
    
    @books = Book.new(book_params)
    if @books.save
     redirect_to book_path(@books.id)
    else
      render :new
　  end
    
    flash[:notice] = "successfully" 
    
  end

  def index
    @books = Book.all
    @book = Book.new
    @book = Book.new
    
    
    
  end

  def show
    @book = Book.find(params[:id])
    
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book = Book.find(params[:id])
    redirect_to book_path(book.id)  
    flash[:notice] = "successfully" 
  end

  def destroy
    book = Book.find(params[:id])  
    book.destroy  
    redirect_to '/books'  
    flash[:notice] = "successfully" 
  end
  
  
  
  private
  def book_params
    
    params.require(:book).permit(:title, :body)
  
  end
  
  
end
