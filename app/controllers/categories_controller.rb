# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    # @course = Course.find_by(category_id: params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:id])
    if @category.save
      flash[:success] = "New category #{@category.title} added."
      redirect_to categories_path
    else
      render 'new'
    end
  end
end
