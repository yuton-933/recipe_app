class DishesController < ApplicationController
  require 'byebug'
  before_action :set_dish, only: %i(destroy edit update show) 

  def new
    @dish = Dish.new
  end
  
  def create
    @dish = Dish.new(dish_params)
    if @dish.present?

      @dish.save
      redirect_to dishes_path
      flash[:notice] = "料理を登録しました"
    else
      redirect_to new_dish_path
      flash[:alert] = "登録に失敗しました"
    end
  end

  def index
    @dishes = Dish.all.order('created_at ASC')
  end  

  def show 
  end  

  def edit
  end
    
  def destroy
    @dish.destroy
    flash[:notice] = "データを破棄しました" 
    rescue
      flash[:alert] = "データの削除に失敗しました"
    ensure
      redirect_to dishes_path
  end  

  def update
    @dish.update(dish_params)
    flash[:notice] = "データを更新しました" 
    redirect_to dishes_path 
    rescue
      render 'edit'
      flash[:alert] = "データの更新に失敗しました"
  end


  private
    def dish_params
      params.require(:dish).permit(
        :title, :prep_time, :cook_time, :sit_time,
        :yield
      )
    end

    def set_dish
      @dish = Dish.find_by(id: params[:id])
    end
  
end
