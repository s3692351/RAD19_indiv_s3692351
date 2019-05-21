# frozen_string_literal: true

class LocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      flash[:success] = "New location #{@location.name} added."
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def location_params
    params.require(:location).permit(:name)
  end
end
