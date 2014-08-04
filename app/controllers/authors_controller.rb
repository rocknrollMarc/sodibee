class AuthorsController < ApplicationController

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to authors_path
    else
      render :new
    end
  end
end
