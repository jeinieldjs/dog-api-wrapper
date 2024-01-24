require "test_helper"

class Api::ClientControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should get an array of all breeds' do 
    get api_all_breeds_path
    assert_response :success
    assert_not_empty JSON.parse(response.body)['data']
  end

  test 'should get a random image' do 
    get api_random_image_path
    assert_response :success
    assert_not_empty JSON.parse(response.body)['data']
  end

  test 'should get an array of master breeds' do 
    get api_all_master_breeds_path
    assert_response :success
    assert_not_empty JSON.parse(response.body)['data']
  end

  test 'should get an array sub-breed of specified breed' do 
    get api_sub_breeds_path(breed: 'hound')
    assert_response :success
    assert_not_empty JSON.parse(response.body)['data']
  end

  test 'should get information on a specified breed' do 
    get api_breed_info_path(breed: 'hound')
    assert_response :success
    assert_not_empty JSON.parse(response.body)['data']
  end

end
