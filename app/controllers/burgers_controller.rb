class BurgersController < ApplicationController
  before_action :set_burger, only: %i[show edit update destroy]

  # GET /burgers
  def index
    @burgers = Burger.all
  end

  # GET /burgers/1
  def show; end

  # GET /burgers/new
  def new
    @burger = Burger.new
  end

  # GET /burgers/1/edit
  def edit; end

  # POST /burgers
  def create
    @burger = Burger.new(burger_params)

    if @burger.save
      redirect_to @burger, notice: 'Burger was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /burgers/1
  def update
    if @burger.update(burger_params)
      redirect_to @burger, notice: 'Burger was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /burgers/1
  def destroy
    @burger.destroy
    redirect_to burgers_url, notice: 'Burger was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_burger
    @burger = Burger.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def burger_params
    params.require(:burger).permit(:name, :description, 'image')
  end
end
