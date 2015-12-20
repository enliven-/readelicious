require 'test_helper'

class BookTest < ActiveSupport::TestCase

  def setup
    f  = File.open("/Users/viksitarora/Downloads/a3Yn0zv_700b.jpg", 'r')
    @book = Book.new(
                      title:  "The Alchemist",
                      image:  f
                    )
  end

  test "should be valid?" do 
    assert @book.valid?
  end

  test "title should be present and have a min length" do
    @book.title = ""
    assert_not @book.valid?
  end

  test "title should not be too long" do
    @book.title = "a" * 256
    assert_not @book.valid?
  end


  test "image should be present" do
    @book.image = nil
    assert_not @book.valid?
  end

  test "image should be of the right format" do
    wf = File.open("/Users/viksitarora/Downloads/r7rs.pdf", 'r')
    @book.image = wf
    assert_not @book.valid?
  end

  test "image should not be too large" do
    lf = File.open("/Users/viksitarora/Downloads/IMG_4742.JPG", 'r')
    @book.image = lf
    assert_not @book.valid?
  end



end
