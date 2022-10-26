class ProductsController < ApplicationController
  before_action :set_product, only: %i[show]

  # GET /products
  def index
    @products = Product.all

    render json: @products
  end

  def search
    @products = Product.where("name LIKE ?", "%#{params[:name]}%")
    @products = @products.where(category: params[:category]) if params[:category]
    render json: @products
  end

  # GET /products/1
  def show
    render json: @product
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end
end
