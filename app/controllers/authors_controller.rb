class AuthorsController < ApplicationController

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to authors_path
    else
      render :new
    end
  end

  private
  def author_params
    params.require(:author).permit(:name, :last_name, 
                                  :address_attributes => [:street, :city, :state,
                                                          :zipcode, :country],
                                  :books_attributes => [:title, :price])
  end
end
