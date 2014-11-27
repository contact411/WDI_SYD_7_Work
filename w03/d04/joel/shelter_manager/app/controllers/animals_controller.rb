class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end


  def create
    @animal = Animal.new(params[:id])

    redirect_to @animal
  end


  def edit

  end


  def update
  end


  def destroy
  end

end