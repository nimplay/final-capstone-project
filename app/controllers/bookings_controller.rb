class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.first
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
  end

  def delete; end

  def update; end
end
