class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
  end

  private

  def recipe_params
    params.require(:person).permit(
    :name,
    ingredients_attributes:[]

      )
end
