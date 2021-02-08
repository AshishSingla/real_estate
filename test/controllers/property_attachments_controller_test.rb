require 'test_helper'

class PropertyAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property_attachment = property_attachments(:one)
  end

  test "should get index" do
    get property_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_property_attachment_url
    assert_response :success
  end

  test "should create property_attachment" do
    assert_difference('PropertyAttachment.count') do
      post property_attachments_url, params: { property_attachment: { avatar: @property_attachment.avatar, property_id: @property_attachment.property_id } }
    end

    assert_redirected_to property_attachment_url(PropertyAttachment.last)
  end

  test "should show property_attachment" do
    get property_attachment_url(@property_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_attachment_url(@property_attachment)
    assert_response :success
  end

  test "should update property_attachment" do
    patch property_attachment_url(@property_attachment), params: { property_attachment: { avatar: @property_attachment.avatar, property_id: @property_attachment.property_id } }
    assert_redirected_to property_attachment_url(@property_attachment)
  end

  test "should destroy property_attachment" do
    assert_difference('PropertyAttachment.count', -1) do
      delete property_attachment_url(@property_attachment)
    end

    assert_redirected_to property_attachments_url
  end
end
