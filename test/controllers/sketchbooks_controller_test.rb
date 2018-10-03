require 'test_helper'

class SketchbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sketchbook = sketchbooks(:one)
  end

  test "should get index" do
    get sketchbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_sketchbook_url
    assert_response :success
  end

  test "should create sketchbook" do
    assert_difference('Sketchbook.count') do
      post sketchbooks_url, params: { sketchbook: { absorption: @sketchbook.absorption, artist_id: @sketchbook.artist_id, brand: @sketchbook.brand, cover: @sketchbook.cover, paper_type: @sketchbook.paper_type, paper_weight: @sketchbook.paper_weight } }
    end

    assert_redirected_to sketchbook_url(Sketchbook.last)
  end

  test "should show sketchbook" do
    get sketchbook_url(@sketchbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_sketchbook_url(@sketchbook)
    assert_response :success
  end

  test "should update sketchbook" do
    patch sketchbook_url(@sketchbook), params: { sketchbook: { absorption: @sketchbook.absorption, artist_id: @sketchbook.artist_id, brand: @sketchbook.brand, cover: @sketchbook.cover, paper_type: @sketchbook.paper_type, paper_weight: @sketchbook.paper_weight } }
    assert_redirected_to sketchbook_url(@sketchbook)
  end

  test "should destroy sketchbook" do
    assert_difference('Sketchbook.count', -1) do
      delete sketchbook_url(@sketchbook)
    end

    assert_redirected_to sketchbooks_url
  end
end
