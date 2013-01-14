require 'test_helper'

class DoctorSchedulesControllerTest < ActionController::TestCase
  setup do
    @doctor_schedule = doctor_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_schedule" do
    assert_difference('DoctorSchedule.count') do
      post :create, doctor_schedule: { doctor_id: @doctor_schedule.doctor_id, schedule_id: @doctor_schedule.schedule_id }
    end

    assert_redirected_to doctor_schedule_path(assigns(:doctor_schedule))
  end

  test "should show doctor_schedule" do
    get :show, id: @doctor_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_schedule
    assert_response :success
  end

  test "should update doctor_schedule" do
    put :update, id: @doctor_schedule, doctor_schedule: { doctor_id: @doctor_schedule.doctor_id, schedule_id: @doctor_schedule.schedule_id }
    assert_redirected_to doctor_schedule_path(assigns(:doctor_schedule))
  end

  test "should destroy doctor_schedule" do
    assert_difference('DoctorSchedule.count', -1) do
      delete :destroy, id: @doctor_schedule
    end

    assert_redirected_to doctor_schedules_path
  end
end
