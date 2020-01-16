class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    @recipe.users.build
    @recipe.ingredients.build
    redirect_to recipe_path(@recipe)
  end

private

  def recipe_params
    params.require(:recipe).permit(:name, :user_ids, 
    users_attributes: [:name],
    ingredients_attributes: [:name]
    )
  end

end
