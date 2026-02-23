class ProductsController < ApplicationController
  def index
    @products = policy_scope(Product).includes(:users)
    authorize @products
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end
end
