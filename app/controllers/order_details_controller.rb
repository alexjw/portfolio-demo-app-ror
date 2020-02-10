class OrderDetailsController < ApplicationController

  def done
    @order_detail = OrderDetail.find(params[:id])
    @order_detail.done = true
    @order_detail.save
    redirect_to kitchen_index_path
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def order_detail_params
    params.require(:order_detail).permit(:id)
  end
end
