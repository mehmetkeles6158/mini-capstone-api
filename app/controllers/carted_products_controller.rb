class CartedProductsController < ApplicationController

  def index
    carted_products = CartedProduct.all
    render json: carted_products
  end

  def create

    product = Product.find_by(id:params[:id])

    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
    )
    carted_product.save
    render json: carted_product

  end

  def destroy
    
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.destroy
    render json: carted_product
  end
    
end
