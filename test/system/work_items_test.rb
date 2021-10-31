require "application_system_test_case"

class WorkItemsTest < ApplicationSystemTestCase
  setup do
    @work_item = work_items(:one)
  end

  test "visiting the index" do
    visit work_items_url
    assert_selector "h1", text: "Work Items"
  end

  test "creating a Work item" do
    visit work_items_url
    click_on "New Work Item"

    fill_in "Label", with: @work_item.label
    fill_in "Name", with: @work_item.name
    click_on "Create Work item"

    assert_text "Work item was successfully created"
    click_on "Back"
  end

  test "updating a Work item" do
    visit work_items_url
    click_on "Edit", match: :first

    fill_in "Label", with: @work_item.label
    fill_in "Name", with: @work_item.name
    click_on "Update Work item"

    assert_text "Work item was successfully updated"
    click_on "Back"
  end

  test "destroying a Work item" do
    visit work_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work item was successfully destroyed"
  end
end
