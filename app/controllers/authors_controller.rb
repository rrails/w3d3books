class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    author = Author.create(params[:author]) #what is happening here?
    redirect_to(author)
  end

  def edit
    @author = Author.find(params[:id])
  end

  def show
    @author = Author.find(params[:id])
  end

  def update
    author = Author.find(params[:id]) #find the author
    author.update_attributes(params[:author]) #update this author
    redirect_to(author)
  end

  def destroy
    author = Author.find(params[:id])
    author.destroy
    redirect_to(authors_path)
  end

end
