class MainController < ApplicationController
  def index
    render json: { msg: "This is the bsale_test-API" }
  end
end
