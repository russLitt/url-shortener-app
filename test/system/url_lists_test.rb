require "application_system_test_case"

class UrlListsTest < ApplicationSystemTestCase
  setup do
    @url_list = url_lists(:one)
  end

  test "visiting the index" do
    visit url_lists_url
    assert_selector "h1", text: "Url Lists"
  end

  test "creating a Url list" do
    visit url_lists_url
    click_on "New Url List"

    fill_in "Full url", with: @url_list.full_url
    fill_in "Short url", with: @url_list.short_url
    click_on "Create Url list"

    assert_text "Url list was successfully created"
    click_on "Back"
  end

  test "updating a Url list" do
    visit url_lists_url
    click_on "Edit", match: :first

    fill_in "Full url", with: @url_list.full_url
    fill_in "Short url", with: @url_list.short_url
    click_on "Update Url list"

    assert_text "Url list was successfully updated"
    click_on "Back"
  end

  test "destroying a Url list" do
    visit url_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Url list was successfully destroyed"
  end
end
