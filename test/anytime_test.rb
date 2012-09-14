require 'test/unit'
require 'anytime'

class AnytimeTest < Test::Unit::TestCase
  def test_freeze
    Anytime.freeze_at(2099,1,2,3,4,5)
    assert_equal Time.utc(2099,1,2,3,4,5), Time.now
    assert_equal Date.new(2099,1,2,3), Date.today
    assert_equal DateTime.new(2099,1,2,3,4,5), DateTime.now
  end
end