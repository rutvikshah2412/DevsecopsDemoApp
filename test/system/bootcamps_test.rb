require "application_system_test_case"

class BootcampsTest < ApplicationSystemTestCase
  setup do
    @bootcamp = bootcamps(:one)
  end

  test "visiting the index" do
    visit bootcamps_url
    assert_selector "h1", text: "Bootcamps"
  end

  test "creating a Bootcamp" do
    visit bootcamps_url
    click_on "New Bootcamp"

    fill_in "Dates", with: @bootcamp.dates
    fill_in "Description", with: @bootcamp.description
    fill_in "Name", with: @bootcamp.name
    click_on "Create Bootcamp"

    assert_text "Bootcamp was successfully created"
    click_on "Back"
  end

  test "updating a Bootcamp" do
    visit bootcamps_url
    click_on "Edit", match: :first

    fill_in "Dates", with: @bootcamp.dates
    fill_in "Description", with: @bootcamp.description
    fill_in "Name", with: @bootcamp.name
    click_on "Update Bootcamp"

    assert_text "Bootcamp was successfully updated"
    click_on "Back"
  end

  test "destroying a Bootcamp" do
    visit bootcamps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bootcamp was successfully destroyed"
  end
end
