# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :loadCategory
  def loadCategory
    @categories = Category.all
  end
end
