class CategoriesController < ApplicationController
  before_action :set_category, only: %i[products]
  # GET /categories
  def index
    @categories = Category.all

    render json: @categories
  end

  def products
    @products = @category.products

    render json: @products
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def category_params
    params.require(:category).permit(:name)
  end
end
