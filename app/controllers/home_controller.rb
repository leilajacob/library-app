class HomeController < ApplicationController
  def index
  	@authors = Author.all
  	@books = Book.all.page(params[:page])
  end

  def author_collection
  	@author = Author.find(params[:id])
  end
end
