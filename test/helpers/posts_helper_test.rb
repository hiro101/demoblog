
 
class PostHelperTest < ActionView::TestCase
  include PostsHelper
  test "エラーメッセージを返す" do
    message = "検索結果がありません"
    assert_equal message, error_message(message)
  end
end