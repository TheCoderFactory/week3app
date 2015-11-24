require 'test_helper'

class CourseApplicationsControllerTest < ActionController::TestCase
  setup do
    @course_application = course_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_application" do
    assert_difference('CourseApplication.count') do
      post :create, course_application: { course_id: @course_application.course_id, prior_study: @course_application.prior_study, reason_for_applying: @course_application.reason_for_applying, user_id: @course_application.user_id }
    end

    assert_redirected_to course_application_path(assigns(:course_application))
  end

  test "should show course_application" do
    get :show, id: @course_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_application
    assert_response :success
  end

  test "should update course_application" do
    patch :update, id: @course_application, course_application: { course_id: @course_application.course_id, prior_study: @course_application.prior_study, reason_for_applying: @course_application.reason_for_applying, user_id: @course_application.user_id }
    assert_redirected_to course_application_path(assigns(:course_application))
  end

  test "should destroy course_application" do
    assert_difference('CourseApplication.count', -1) do
      delete :destroy, id: @course_application
    end

    assert_redirected_to course_applications_path
  end
end
