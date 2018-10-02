require "application_system_test_case"

class SketchbooksTest < ApplicationSystemTestCase
  setup do
    @sketchbook = sketchbooks(:one)
  end

  test "visiting the index" do
    visit sketchbooks_url
    assert_selector "h1", text: "Sketchbooks"
  end

  test "creating a Sketchbook" do
    visit sketchbooks_url
    click_on "New Sketchbook"

    fill_in "Absorption", with: @sketchbook.absorption
    fill_in "Artist", with: @sketchbook.artist_id
    fill_in "Brand", with: @sketchbook.brand
    fill_in "Paper Type", with: @sketchbook.paper_type
    fill_in "Paper Weight", with: @sketchbook.paper_weight
    click_on "Create Sketchbook"

    assert_text "Sketchbook was successfully created"
    click_on "Back"
  end

  test "updating a Sketchbook" do
    visit sketchbooks_url
    click_on "Edit", match: :first

    fill_in "Absorption", with: @sketchbook.absorption
    fill_in "Artist", with: @sketchbook.artist_id
    fill_in "Brand", with: @sketchbook.brand
    fill_in "Paper Type", with: @sketchbook.paper_type
    fill_in "Paper Weight", with: @sketchbook.paper_weight
    click_on "Update Sketchbook"

    assert_text "Sketchbook was successfully updated"
    click_on "Back"
  end

  test "destroying a Sketchbook" do
    visit sketchbooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sketchbook was successfully destroyed"
  end
end
