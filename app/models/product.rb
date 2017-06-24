class Product < ApplicationRecord
  validates_presence_of :name, :price, :inward_date, :type, :description
  validates :type, inclusion: { in: %w(Pen Notebook), message: "must be either Pen or Notebook" }

  def price_sum(product_type)
  	Product.where(type: product_type).sum { |prod| prod.price }
  end

  def self.new_by_type(attributes)
    type = attributes.delete(:type)
    klass = if %w(Pen Notebook).include?(type)
      type.constantize
    else
      Product
    end
    klass.new(attributes)
  end

  def self.type
  	"Generic"
  end

  def type
    self.class.type
  end

  def pen?
    false
  end

  def notebook?
    false
  end
end
