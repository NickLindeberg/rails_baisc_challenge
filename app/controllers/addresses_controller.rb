class AddressesController < ApplicationController
  def index

  end

  def new
    @address = Address.new
  end

end
