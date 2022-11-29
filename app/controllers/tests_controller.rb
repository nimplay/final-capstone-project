class TestsController < ApplicationController
  def index
    @car = RestClient.get "http://localhost:3000/api/v1/cars", {content_type: :json, accept: :json}
  end
end
