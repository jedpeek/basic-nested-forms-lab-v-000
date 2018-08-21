class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    @recipe.ingredient.build(name: 'ingredient_1')
    @recipe.ingredient.build(name: 'ingredient_2')
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
    :title,
    ingredients_attributes:[
      :name,
      :quantity
      ])
    end
end
