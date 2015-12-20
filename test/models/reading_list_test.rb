require 'test_helper'

class ReadingListTest < ActiveSupport::TestCase

  def setup
    @user = User.new( first_name:   "Bhushan",
                      last_name:    "Lodha",
                      email:        "bhushan@gmail.com",
                      password:     "foobar",
                      password_confirmation: "foobar")

    @rl   = ReadingList.new( user: @user )
  end

  test "should be valid" do
    assert @rl.valid?
  end

  test "user should be present" do
    @rl.user = nil
    assert @rl.invalid?
  end


end
