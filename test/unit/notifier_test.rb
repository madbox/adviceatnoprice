require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "simple_advice" do
    @expected.subject = 'Notifier#simple_advice'
    @expected.body    = read_fixture('simple_advice')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Notifier.create_simple_advice(@expected.date).encoded
  end

end
