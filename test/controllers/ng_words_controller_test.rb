require 'test_helper'

class NgWordsControllerTest < ActionController::TestCase
  setup do
    @ng_word = ng_words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ng_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ng_word" do
    assert_difference('NgWord.count') do
      post :create, ng_word: { point: @ng_word.point, word: @ng_word.word }
    end

    assert_redirected_to ng_word_path(assigns(:ng_word))
  end

  test "should show ng_word" do
    get :show, id: @ng_word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ng_word
    assert_response :success
  end

  test "should update ng_word" do
    patch :update, id: @ng_word, ng_word: { point: @ng_word.point, word: @ng_word.word }
    assert_redirected_to ng_word_path(assigns(:ng_word))
  end

  test "should destroy ng_word" do
    assert_difference('NgWord.count', -1) do
      delete :destroy, id: @ng_word
    end

    assert_redirected_to ng_words_path
  end
end
