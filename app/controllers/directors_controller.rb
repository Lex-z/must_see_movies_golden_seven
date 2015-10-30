class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def delete_row
    @entry = Director.find(params[:id])
    @entry.destroy
    redirect_to("http://localhost:3000/directors")
  end

  def new_form
  end

  def create_row
    @entry = Director.new

    @entry.name = params[:name]
    @entry.image_url = params[:image_url]
    @entry.dob = params[:dob]
    @entry.bio = params[:bio]

    @entry.save

    redirect_to("http://localhost:3000/directors")
  end

  def edit_form
      @director = Director.find(params[:id])
  end

  def edit_row
    @entry = Director.find(params[:id])

    @entry.name = params[:name]
    @entry.image_url = params[:image_url]
    @entry.dob = params[:dob]
    @entry.bio = params[:bio]

    @entry.save

    redirect_to("http://localhost:3000/directors/#{@entry.id}")
  end

end
