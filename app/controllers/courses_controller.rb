# frozen_string_literal: true

class CoursesController < ApplicationController
  before_action :set_course, only: %i[show edit update destroy]
  before_action :require_same_user, only: [:edit, :update, :destroy]


  def index
    @courses = Course.all
    @user = User.first
  end

  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
    @category = Category.all
    @location = Location.all
  end

  # GET /courses/1/edit
  def edit
    @category = Category.all
    @location = Location.all
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user
    @course.created = DateTime.now
    if @course.save
      flash[:success] = "New Course #{@course.name} added."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course.destroy
    flash[:success] = "Course was deleted."
    redirect_to courses_path
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :prerequisite, :description, :courseImage, category_ids: [], location_ids: [])
  end

  def require_same_user
    if current_user != @course.user
      flash[:danger] = "You can only edit or delete your own course."
      redirect_to course_path
    end
  end
end
