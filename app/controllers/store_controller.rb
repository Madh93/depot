class StoreController < ApplicationController
  before_action :initialize_counter

  def index
    session[:counter] += 1
    @products = Product.order(:title)
  end

  private

  def initialize_counter
    session[:counter] ||= 0
  end
end
