require "test_helper"

class BookTest < ActiveSupport::TestCase
  setup do
    @person = people(:one)
    @valid_attributes = {
      person: @person,
      title: "A valid book title",
      isbn: "ISBN 075-5-757-88395-8" 
    }
  end

  test "should be invalid without a title" do
    book = Book.new(@valid_attributes.merge(title: ""))
    assert_not book.valid?
    assert_not_nil book.errors[:title]
  end

  test "should be invalid with invalid ISBN" do
    book = Book.new(@valid_attributes.merge(isbn: "invalid-isbn"))
    assert_not book.valid?
    assert_equal ["must be in this format: ISBN XXX-X-XXX-XXXXX-X where X is a digit"], book.errors[:isbn]
  end
end
