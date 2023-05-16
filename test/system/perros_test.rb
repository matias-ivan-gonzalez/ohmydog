require "application_system_test_case"

class PerrosTest < ApplicationSystemTestCase
  setup do
    @perro = perros(:one)
  end

  test "visiting the index" do
    visit perros_url
    assert_selector "h1", text: "Perros"
  end

  test "should create perro" do
    visit perros_url
    click_on "New perro"

    fill_in "Age", with: @perro.age
    fill_in "Birth date", with: @perro.birth_date
    fill_in "Breed", with: @perro.breed
    fill_in "Image", with: @perro.image
    fill_in "Name", with: @perro.name
    fill_in "Owner", with: @perro.owner
    fill_in "Weight", with: @perro.weight
    click_on "Create Perro"

    assert_text "Perro was successfully created"
    click_on "Back"
  end

  test "should update Perro" do
    visit perro_url(@perro)
    click_on "Edit this perro", match: :first

    fill_in "Age", with: @perro.age
    fill_in "Birth date", with: @perro.birth_date
    fill_in "Breed", with: @perro.breed
    fill_in "Image", with: @perro.image
    fill_in "Name", with: @perro.name
    fill_in "Owner", with: @perro.owner
    fill_in "Weight", with: @perro.weight
    click_on "Update Perro"

    assert_text "Perro was successfully updated"
    click_on "Back"
  end

  test "should destroy Perro" do
    visit perro_url(@perro)
    click_on "Destroy this perro", match: :first

    assert_text "Perro was successfully destroyed"
  end
end
