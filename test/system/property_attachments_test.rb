require "application_system_test_case"

class PropertyAttachmentsTest < ApplicationSystemTestCase
  setup do
    @property_attachment = property_attachments(:one)
  end

  test "visiting the index" do
    visit property_attachments_url
    assert_selector "h1", text: "Property Attachments"
  end

  test "creating a Property attachment" do
    visit property_attachments_url
    click_on "New Property Attachment"

    fill_in "Avatar", with: @property_attachment.avatar
    fill_in "Property", with: @property_attachment.property_id
    click_on "Create Property attachment"

    assert_text "Property attachment was successfully created"
    click_on "Back"
  end

  test "updating a Property attachment" do
    visit property_attachments_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @property_attachment.avatar
    fill_in "Property", with: @property_attachment.property_id
    click_on "Update Property attachment"

    assert_text "Property attachment was successfully updated"
    click_on "Back"
  end

  test "destroying a Property attachment" do
    visit property_attachments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Property attachment was successfully destroyed"
  end
end
