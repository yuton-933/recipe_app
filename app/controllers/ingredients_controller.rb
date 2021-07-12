class IngredientsController < ApplicationController
  before_action :set_ingredient, only: %i(destroy edit update) 
  require 'byebug'
  

  def create
    dish = Dish.find_by(id: params[:dish_id])
    ingredient = dish.ingredients.build(ingredient_params)
    # byebug
    if ingredient.save
      redirect_to dishes_path
      flash[:notice] = "料理に材料を登録しました"
    else
      redirect_to new_dish_ingredient_path
      flash[:alert] = "登録に失敗しました"
    end  
  end

  def destroy
    @ingredient.destroy
    flash[:notice] = "データを破棄しました" 
    rescue
      flash[:alert] = "データの削除に失敗しました"
    ensure
      redirect_to dishes_path
  end  
  
private
  def ingredient_params
    params.permit(
      :dish_id, :food_id, :unit, :gram, 
    )
  end

  def set_ingredient
    @ingredient = Ingredient.find_by(id: params[:id])
  end

end
