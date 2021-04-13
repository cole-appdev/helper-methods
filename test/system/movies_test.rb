require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit movies_url

    assert_selector "h1", text: "List of all movies"
  end

  test "creating a movie" do
    visit movies_path

    click_on "Add a new movie"

    fill_in "Title", with: "Test Movie Title"
    fill_in "Description", with: "Test Movie Description"

    click_on "Create movie"

    assert_text "Test Movie Title"
  end
  

end
