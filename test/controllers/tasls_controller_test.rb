require "test_helper"

class TaslsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tasl = tasls(:one)
  end

  test "should get index" do
    get tasls_url
    assert_response :success
  end

  test "should get new" do
    get new_tasl_url
    assert_response :success
  end

  test "should create tasl" do
    assert_difference("Tasl.count") do
      post tasls_url, params: { tasl: { content: @tasl.content, title: @tasl.title } }
    end

    assert_redirected_to tasl_url(Tasl.last)
  end

  test "should show tasl" do
    get tasl_url(@tasl)
    assert_response :success
  end

  test "should get edit" do
    get edit_tasl_url(@tasl)
    assert_response :success
  end

  test "should update tasl" do
    patch tasl_url(@tasl), params: { tasl: { content: @tasl.content, title: @tasl.title } }
    assert_redirected_to tasl_url(@tasl)
  end

  test "should destroy tasl" do
    assert_difference("Tasl.count", -1) do
      delete tasl_url(@tasl)
    end

    assert_redirected_to tasls_url
  end
end
