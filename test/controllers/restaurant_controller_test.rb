require 'test_helper'

class RestaurantControllerTest < ActionDispatch::IntegrationTest
  
  test "unsuccessful edit" do
    get edit_restaurant_path(@restaurant)
    assert_template 'restaurant/edit'
    patch restaurant_path(@restaurant), params: { restaurant: { name:  "chez doudou",
                                              logo: "/assets/image.jpg",
                                              city:              "foo",
                                              zipcode: "97217",
                                              address: "coin des peres",
                                              phone: "0697789889",
                                              place:"15",
                                              id:"980190962",
                                              created_at:"2017-09-25 04:59:19.277342",
                                              updated_at:"2017-09-25 04:59:19.277342"
                                               } }

    assert_template 'restaurant/edit'
  end
end
