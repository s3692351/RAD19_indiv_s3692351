# frozen_string_literal: true

require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = Courses.find(1)
  end

  test 'should get index' do
    get course_path
    assert_response :success
  end

  test 'should get new' do
    get new_course_path
    assert_response :success
  end

  test 'should create course' do
    assert_difference('Course.count') do
      post courses_path, params: { course: { name: @course.name } }
    end
    assert_redirected_to course_path(Course.last)
  end

  test 'should show course' do
    get course_path(@course)
    assert_response :success
  end

  test 'should get edit' do
    get edit_course_path(@course)
    assert_response :success
  end

  test 'should update course' do
    patch course_path(@course), params: { course: { name: @course.name } }
    assert_redirected_to course_path(@course)
  end

  test 'should destroy course' do
    assert_difference('Course.count', -1) do
      delete course_path(@course)
    end

    assert_redirected_to courses_path
  end
end
