require 'test_helper'

class PetRecordsControllerTest < ActionController::TestCase
  setup do
    @pet_record = pet_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pet_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pet_record" do
    assert_difference('PetRecord.count') do
      post :create, pet_record: { age: @pet_record.age, breed: @pet_record.breed, date_last_visit: @pet_record.date_last_visit, pet_type: @pet_record.pet_type, weight: @pet_record.weight }
    end

    assert_redirected_to pet_record_path(assigns(:pet_record))
  end

  test "should show pet_record" do
    get :show, id: @pet_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pet_record
    assert_response :success
  end

  test "should update pet_record" do
    patch :update, id: @pet_record, pet_record: { age: @pet_record.age, breed: @pet_record.breed, date_last_visit: @pet_record.date_last_visit, pet_type: @pet_record.pet_type, weight: @pet_record.weight }
    assert_redirected_to pet_record_path(assigns(:pet_record))
  end

  test "should destroy pet_record" do
    assert_difference('PetRecord.count', -1) do
      delete :destroy, id: @pet_record
    end

    assert_redirected_to pet_records_path
  end
end
