class Product < ApplicationRecord
  validates_presence_of :name, :price, :status, :inward_date, :type, :description

  def price_sum(product_type)
  	Product.where(type: product_type).sum { |prod| prod.price }
  end
end
