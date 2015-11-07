require 'test_helper'

class ClientMailerTest < ActionMailer::TestCase
  test "engagement_email" do
    mail = ClientMailer.engagement_email
    assert_equal "Engagement email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
