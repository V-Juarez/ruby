class ProductsController < ActionController::Base
  def index
    @products = Product.all
  end
end
