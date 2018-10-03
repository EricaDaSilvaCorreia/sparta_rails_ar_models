require 'test_helper'

class PaintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paint = paints(:one)
  end

  test "should get index" do
    get paints_url
    assert_response :success
  end

  test "should get new" do
    get new_paint_url
    assert_response :success
  end

  test "should create paint" do
    assert_difference('Paint.count') do
      post paints_url, params: { paint: { drying_time: @paint.drying_time, paint_type: @paint.paint_type, sketchbook_id: @paint.sketchbook_id } }
    end

    assert_redirected_to paint_url(Paint.last)
  end

  test "should show paint" do
    get paint_url(@paint)
    assert_response :success
  end

  test "should get edit" do
    get edit_paint_url(@paint)
    assert_response :success
  end

  test "should update paint" do
    patch paint_url(@paint), params: { paint: { drying_time: @paint.drying_time, paint_type: @paint.paint_type, sketchbook_id: @paint.sketchbook_id } }
    assert_redirected_to paint_url(@paint)
  end

  test "should destroy paint" do
    assert_difference('Paint.count', -1) do
      delete paint_url(@paint)
    end

    assert_redirected_to paints_url
  end
end
