class FrontsController < ApplicationController
  def index
    @index
  end
  def edit
    @recipe = Recipe.find(params[:id])
  end
end
