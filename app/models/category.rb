class Category < ApplicationRecord
  self.table_name = "category"

  def products
    Product.where(category: id)
  end
end
