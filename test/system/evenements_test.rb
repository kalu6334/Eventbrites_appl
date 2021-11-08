require "application_system_test_case"

class EvenementsTest < ApplicationSystemTestCase
  setup do
    @evenement = evenements(:one)
  end

  test "visiting the index" do
    visit evenements_url
    assert_selector "h1", text: "Evenements"
  end

  test "creating a Evenement" do
    visit evenements_url
    click_on "New Evenement"

    fill_in "Description", with: @evenement.description
    fill_in "Duration", with: @evenement.duration
    fill_in "Location", with: @evenement.location
    fill_in "Price", with: @evenement.price
    fill_in "Start date", with: @evenement.start_date
    fill_in "Title", with: @evenement.title
    click_on "Create Evenement"

    assert_text "Evenement was successfully created"
    click_on "Back"
  end

  test "updating a Evenement" do
    visit evenements_url
    click_on "Edit", match: :first

    fill_in "Description", with: @evenement.description
    fill_in "Duration", with: @evenement.duration
    fill_in "Location", with: @evenement.location
    fill_in "Price", with: @evenement.price
    fill_in "Start date", with: @evenement.start_date
    fill_in "Title", with: @evenement.title
    click_on "Update Evenement"

    assert_text "Evenement was successfully updated"
    click_on "Back"
  end

  test "destroying a Evenement" do
    visit evenements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evenement was successfully destroyed"
  end
end
