class FoodsController < ApplicationController
  require 'byebug'
  before_action :set_food, only: %i(destroy edit update)

  def new
    @food = Food.new
  end
  
  def create
    @food = Food.new(food_params)
    if @food.present?
      # byebug
      @food.save
      redirect_to foods_path
      flash[:notice] = "材料を登録しました"
    else
      redirect_to new_food_path
      flash[:alert] = "登録に失敗しました"
    end
  end

  def destroy
    @food.destroy
    flash[:notice] = "データを破棄しました" 
    rescue
      flash[:alert] = "データの削除に失敗しました"
    ensure
      redirect_to foods_path
  end

  def index
    @foods = Food.all.order('created_at ASC')
  end  

  def edit
  end  

  def update
    @food.update(food_params)
    flash[:notice] = "データを更新しました" 
    redirect_to foods_path 
    rescue
      render 'edit'
      flash[:alert] = "データの更新に失敗しました"
  end

  private
    def food_params
      params.require(:food).permit(
          :title, :meat, :dairy_egg, :seafood, :other_animal, 
          :allergen, :protein, :fat, :carbs, :cost
      )
    end

    def set_food
      @food = Food.find_by(id: params[:id])
    end
end
