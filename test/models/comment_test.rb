require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @image = images(:one)
    @comment = @image.comments.build(content: "Lorem ipsum")
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "image id should be present" do
    @comment.image_id = nil
    assert_not @comment.valid?
  end

  test "content should be present" do
    @comment.content = "    "
    assert_not @comment.valid?
  end

  test "content should be at 140 characters" do
    @comment.content = "a" * 141
    assert_not @comment.valid?
  end

  test "order should be most recent first" do
    assert_equal comments(:most_recent), Comment.first
  end
end
