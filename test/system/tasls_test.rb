require "application_system_test_case"

class TaslsTest < ApplicationSystemTestCase
  setup do
    @tasl = tasls(:one)
  end

  test "visiting the index" do
    visit tasls_url
    assert_selector "h1", text: "Tasls"
  end

  test "should create tasl" do
    visit tasls_url
    click_on "New tasl"

    fill_in "Content", with: @tasl.content
    fill_in "Title", with: @tasl.title
    click_on "Create Tasl"

    assert_text "Tasl was successfully created"
    click_on "Back"
  end

  test "should update Tasl" do
    visit tasl_url(@tasl)
    click_on "Edit this tasl", match: :first

    fill_in "Content", with: @tasl.content
    fill_in "Title", with: @tasl.title
    click_on "Update Tasl"

    assert_text "Tasl was successfully updated"
    click_on "Back"
  end

  test "should destroy Tasl" do
    visit tasl_url(@tasl)
    click_on "Destroy this tasl", match: :first

    assert_text "Tasl was successfully destroyed"
  end
end
