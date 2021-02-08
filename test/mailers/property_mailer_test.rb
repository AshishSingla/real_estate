require 'test_helper'

class PropertyMailerTest < ActionMailer::TestCase
  test "buy_property" do
    mail = PropertyMailer.buy_property
    assert_equal "Buy property", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
