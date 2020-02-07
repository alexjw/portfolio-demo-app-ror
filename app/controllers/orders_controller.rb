class OrdersController < ApplicationController
  before_action :set_order, only: %i[show edit update destroy close]

  # Get /orders
  def index

  end

  # GET /orders/1
  def show; end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # POST /orders
  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to edit_order_path(@order), notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  def close
    render @order
  end

  # GET /orders/1/edit
  def edit; end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      redirect_to @order, notice: 'Order was successfully updated.'
    else
      render :edit
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def order_params
    params.require(:order).permit(:client_id, :table,
                                 order_details_attributes: OrderDetail.attribute_names.map(&:to_sym).push(:_destroy))
    # recipes_attributes: [:id, :meal_id, :ingredient_id, :quantity, :_destroy]
  end
  
end
