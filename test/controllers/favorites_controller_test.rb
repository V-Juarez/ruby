require "test_helper"

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    login
    @megadrive = products(:megadrive)
  end

  test "should create favorite" do
    assert_difference('Favorite.count', 1) do
      post favorites_url(product_id: @megadrive.id)
    end

    assert_redirected_to product_path(@megadrive)
  end

end
