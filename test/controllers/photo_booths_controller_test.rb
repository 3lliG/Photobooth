require 'test_helper'

class PhotoBoothsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_booth = photo_booths(:one)
  end

  test "should get index" do
    get photo_booths_url
    assert_response :success
  end

  test "should get new" do
    get new_photo_booth_url
    assert_response :success
  end

  test "should create photo_booth" do
    assert_difference('PhotoBooth.count') do
      post photo_booths_url, params: { photo_booth: {  } }
    end

    assert_redirected_to photo_booth_url(PhotoBooth.last)
  end

  test "should show photo_booth" do
    get photo_booth_url(@photo_booth)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo_booth_url(@photo_booth)
    assert_response :success
  end

  test "should update photo_booth" do
    patch photo_booth_url(@photo_booth), params: { photo_booth: {  } }
    assert_redirected_to photo_booth_url(@photo_booth)
  end

  test "should destroy photo_booth" do
    assert_difference('PhotoBooth.count', -1) do
      delete photo_booth_url(@photo_booth)
    end

    assert_redirected_to photo_booths_url
  end
end
