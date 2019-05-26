# frozen_string_literal: true

class CoursesController < ApplicationController
  before_action :set_course, only: %i[show edit update destroy]

  def index
    @courses = Course.all
    @user = User.first
  end

  def show; end

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
    @course.courseImage.attach(params[:courseImage])
    if @course.save
      flash[:success] = "New Course #{@course.name} added."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    respond_to do |format|
      @course.courseImage.attach(params[:courseImage])
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
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @course = Course.find(params[:id])
    @course.votes.create
    redirect_to courses_path
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :prerequisite, :description, :courseImage, :created, category_ids: [], location_ids: [])
  end
end
