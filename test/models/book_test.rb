require "test_helper"

class BookTest < ActiveSupport::TestCase
  setup do
    @person = people(:one)
    @valid_attributes = {
      title: "A Valid Book Title",
      isbn: "ISBN 978-0-306-40615-7",
      person: @person
    }
  end

  test "should be invalid without a title" do
    book = Book.new(@valid_attributes.merge(title: ""))
    assert_not book.valid?
    assert_not_nil book.errors[:title]
  end

  test "should be invalid without an ISBN" do
    book = Book.new(@valid_attributes.merge(isbn: ""))
    assert_not book.valid?
    assert_not_nil book.errors[:isbn]
  end

  test "should be invalid with incorrect ISBN format" do
    book = Book.new(@valid_attributes.merge(isbn: "12345"))
    assert_not book.valid?
    assert_not_nil book.errors[:isbn]
  end
end
