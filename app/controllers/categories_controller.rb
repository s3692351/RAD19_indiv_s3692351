# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "New category #{@category.title} added."
      redirect_to @category
    else
      render 'new'
    end
  end

  def category_params
    params.require(:category).permit(:title)
  end
end
