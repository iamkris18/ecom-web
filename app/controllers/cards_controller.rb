class CardsController < ApplicationController
  def show
    @order_items=current_order.order_items
  end
end
