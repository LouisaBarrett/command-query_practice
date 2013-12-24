require_relative 'product'

class Catalogue

  def initialize
    @products = []
  end

  def cheapest
    if @products == []
    else
      @products.min_by do |product|
        product.price
      end.item
    end
  end

  def <<(product)
    @products << product
  end

end
