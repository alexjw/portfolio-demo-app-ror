# frozen_string_literal: true

class MealsController < ApplicationController
  before_action :set_meal, only: %i[show edit update destroy]

  # GET /meals
  def index
    @meals = Meal.all
  end

  # GET /meals/1
  # GET /meals/1.json
  def show; end

  # GET /meals/new
  def new
    @meal = Meal.new
    # 3.times { @meal.recipes.build }
  end

  # GET /meals/1/edit
  def edit; end

  # POST /meals
  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      redirect_to @meal, notice: 'Meal was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /meals/1
  def update
    if @meal.update(meal_params)
      redirect_to @meal, notice: 'Meal was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /meals/1
  def destroy
    @meal.destroy
    redirect_to meals_url, notice: 'Meal was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_meal
    @meal = Meal.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def meal_params
    params.require(:meal).permit(:name, :description, :image, :price,
                                 meal_details_attributes: MealDetail.attribute_names.map(&:to_sym).push(:_destroy))
    # recipes_attributes: [:id, :meal_id, :ingredient_id, :quantity, :_destroy]
  end
end
