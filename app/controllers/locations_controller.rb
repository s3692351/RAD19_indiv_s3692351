# frozen_string_literal: true

class LocationsController < ApplicationController
  def index; end

  def show
    @location = Location.find(params[:id])
  end
end
