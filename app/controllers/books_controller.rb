class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new # this displays the form for input new book details
    @book = Book.new
  end

  def create #after the form has been submitted. Create and write book details to db and then display list of books
    book = Book.create(params[:book])
    redirect_to(book) #where are we redirecting
  end

  def show # show a particular book details
    @book = Book.find(params[:id])
  end

  def edit #edit a specific book - display on screen and then go to update
    @book = Book.find(params[:id])
  end

  def update # this gets called after operator enters sumbit after form is filled in.
    book = Book.find(params[:id]) # find the specific book details
    book.update_attributes(params[:book]) # update the book details on database. only col's that have changed.
  end

  def destroy
    book = Book.find(params[:id]) #find the book to be deleted
    book.destroy
    redirect_to(books_path)
  end
end
