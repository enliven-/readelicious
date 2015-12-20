require 'test_helper'

class ReadingListItemsControllerTest < ActionController::TestCase
  setup do
    @reading_list_item = reading_list_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reading_list_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reading_list_item" do
    assert_difference('ReadingListItem.count') do
      post :create, reading_list_item: { book_id: @reading_list_item.book_id, reading_list_id: @reading_list_item.reading_list_id, status: @reading_list_item.status }
    end

    assert_redirected_to reading_list_item_path(assigns(:reading_list_item))
  end

  test "should show reading_list_item" do
    get :show, id: @reading_list_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reading_list_item
    assert_response :success
  end

  test "should update reading_list_item" do
    patch :update, id: @reading_list_item, reading_list_item: { book_id: @reading_list_item.book_id, reading_list_id: @reading_list_item.reading_list_id, status: @reading_list_item.status }
    assert_redirected_to reading_list_item_path(assigns(:reading_list_item))
  end

  test "should destroy reading_list_item" do
    assert_difference('ReadingListItem.count', -1) do
      delete :destroy, id: @reading_list_item
    end

    assert_redirected_to reading_list_items_path
  end
end
