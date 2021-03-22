class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    recipes = Recipe.all
    render json: { post: recipes }
  end
  def show 
    @recipe = Recipe.find(params[:id])
    recipe = Recipe.find(params[:id])
    render json: { post: recipe }
  end
  def new 
    @recipe = Recipe.new
  end
  def create
    recipe = Recipe.create(recipe_params)
    render json: { post: recipe }
  end
  def edit
    @recipe = Recipe.find(params[:id])
  end
  def update
    recipe = Recipe.update(recipe_params)
    render json: { post: recipe }
  end
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    recipe = Recipe.find(params[:id])
    render json: { post: recipe }
  end


  private
  def recipe_params
    params.require(:recipe).permit(:title, :making_time, :serves, :ingredients, :cost)
  end

end
