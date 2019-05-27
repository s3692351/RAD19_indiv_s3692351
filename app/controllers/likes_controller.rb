# frozen_string_literal: true

class LikesController < ApplicationController
  before_action :find_course
  before_action :find_like, only: [:destroy]
  def create
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      @course.likes.create(user_id: current_user.id)
    end
    redirect_to courses_path
  end

  def already_liked?
    Like.where(user_id: current_user.id, course_id:
    params[:course_id]).exists?
  end

  def destroy
    if !already_liked?
      flash[:notice] = 'Cannot unlike'
    else
      @like.destroy
    end
    redirect_to courses_path
  end

  def find_like
    @like = @course.likes.find(params[:id])
  end

  private

  def find_course
    @course = Course.find(params[:course_id])
  end
end
