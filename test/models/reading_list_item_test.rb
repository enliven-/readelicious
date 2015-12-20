require 'test_helper'

class ReadingListItemTest < ActiveSupport::TestCase

  def setup

    user      = User.new( first_name:   "Bhushan",
                          last_name:    "Lodha",
                          email:        "bhushan@gmail.com",
                          password:     "foobar",
                          password_confirmation: "foobar")
    f         = File.open("/Users/viksitarora/Downloads/a3Yn0zv_700b.jpg", 'r')
    book      = Book.new(title: "The Al", image: f)
    rl        = ReadingList.new( user: user )

    @rl_item  = ReadingListItem.new(reading_list: rl, book: book)
  end

  test "should be valid" do
    assert @rl_item.valid?
  end

  test "book should be present" do
    @rl_item.book = nil
    assert @rl_item.invalid?
  end

end
