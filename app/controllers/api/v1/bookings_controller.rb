class Api::V1::BookingsController < ApplicationController
  # load_and_authorize_resource
  # before_action :authenticate_user!
  before_action :set_user
  before_action :set_booking, only: %i[show update destroy]

  # GET /bookings
  def index
    @bookings = Booking.where(user: @user)

    render json: @bookings
  end

  # GET /bookings/1
  def show
    render json: @booking
  end

  # POST /bookings
  def create
    @user.bookings.new(booking_params)

    if @booking.save
      render json: @booking, status: :created
      # , location: api_v1_booking_url(@booking)
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookings/1
  def update
    if @booking.update(booking_params)
      render json: @booking
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookings/1
  def destroy
    @booking.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  # Only allow a list of trusted parameters through.
  def booking_params
    params.require(:booking).permit(:date, :date_return, :city, :car_id)
  end
end
