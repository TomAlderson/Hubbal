require 'test_helper'

class TimetableEntriesControllerTest < ActionController::TestCase
  setup do
    @timetable_entry = timetable_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timetable_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timetable_entry" do
    assert_difference('TimetableEntry.count') do
      post :create, timetable_entry: { finish: @timetable_entry.finish, lesson_id: @timetable_entry.lesson_id, start: @timetable_entry.start, timetable_id: @timetable_entry.timetable_id }
    end

    assert_redirected_to timetable_entry_path(assigns(:timetable_entry))
  end

  test "should show timetable_entry" do
    get :show, id: @timetable_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timetable_entry
    assert_response :success
  end

  test "should update timetable_entry" do
    patch :update, id: @timetable_entry, timetable_entry: { finish: @timetable_entry.finish, lesson_id: @timetable_entry.lesson_id, start: @timetable_entry.start, timetable_id: @timetable_entry.timetable_id }
    assert_redirected_to timetable_entry_path(assigns(:timetable_entry))
  end

  test "should destroy timetable_entry" do
    assert_difference('TimetableEntry.count', -1) do
      delete :destroy, id: @timetable_entry
    end

    assert_redirected_to timetable_entries_path
  end
end
