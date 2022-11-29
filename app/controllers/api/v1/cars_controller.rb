class Api::V1::CarsController < ApplicationController
  # GET /cars or /cars.json
  def index
    @cars = Car.all
    render json: @cars.to_json, status: :ok
  end

  # SHOW cars by id
  def show
    @car = Car.find(params[:id])
    render json: @car.to_json, status: :ok
  end

  # POST /cars or /cars.json
  def create
    @car = Car.new(car_params)
    if @car.save
      render json: @car, status: :created
    end
  end

  # PATCH/PUT /cars/1 or /cars/1.json
  def update
    @car = Car.find_by(id: params[:id])
    if @car.update(car_params)
      render :show, status: :ok, location: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cars/1 or /cars/1.json
  def destroy
    @car = Car.find_by(id: params[:id])
    if @car.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_car
    @car = Car.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def car_params
    params.require(:car).permit(:car_name, :image, :booked, :driver_name, :price)
  end
end
