require 'test_helper'

class ToiletsControllerTest < ActionController::TestCase
  setup do
    @toilet = toilets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toilets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toilet" do
    assert_difference('Toilet.count') do
      post :create, toilet: { address: @toilet.address, all_wa: @toilet.all_wa, all_you: @toilet.all_you, area: @toilet.area, baggage_flag: @toilet.baggage_flag, car_challenge: @toilet.car_challenge, car_normal: @toilet.car_normal, care_flag: @toilet.care_flag, child_dai: @toilet.child_dai, child_sho: @toilet.child_sho, direction: @toilet.direction, door: @toilet.door, dry_flag: @toilet.dry_flag, emergency: @toilet.emergency, hook_flag: @toilet.hook_flag, infant_bed: @toilet.infant_bed, infant_chair: @toilet.infant_chair, man_sho: @toilet.man_sho, man_wa: @toilet.man_wa, man_you: @toilet.man_you, memo: @toilet.memo, ostomate_flag: @toilet.ostomate_flag, rest_flag: @toilet.rest_flag, sightseeing: @toilet.sightseeing, space: @toilet.space, tap: @toilet.tap, tesuri: @toilet.tesuri, time: @toilet.time, title: @toilet.title, type: @toilet.type, wash: @toilet.wash, wash_flag: @toilet.wash_flag, woman_wa: @toilet.woman_wa, woman_you: @toilet.woman_you }
    end

    assert_redirected_to toilet_path(assigns(:toilet))
  end

  test "should show toilet" do
    get :show, id: @toilet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toilet
    assert_response :success
  end

  test "should update toilet" do
    patch :update, id: @toilet, toilet: { address: @toilet.address, all_wa: @toilet.all_wa, all_you: @toilet.all_you, area: @toilet.area, baggage_flag: @toilet.baggage_flag, car_challenge: @toilet.car_challenge, car_normal: @toilet.car_normal, care_flag: @toilet.care_flag, child_dai: @toilet.child_dai, child_sho: @toilet.child_sho, direction: @toilet.direction, door: @toilet.door, dry_flag: @toilet.dry_flag, emergency: @toilet.emergency, hook_flag: @toilet.hook_flag, infant_bed: @toilet.infant_bed, infant_chair: @toilet.infant_chair, man_sho: @toilet.man_sho, man_wa: @toilet.man_wa, man_you: @toilet.man_you, memo: @toilet.memo, ostomate_flag: @toilet.ostomate_flag, rest_flag: @toilet.rest_flag, sightseeing: @toilet.sightseeing, space: @toilet.space, tap: @toilet.tap, tesuri: @toilet.tesuri, time: @toilet.time, title: @toilet.title, type: @toilet.type, wash: @toilet.wash, wash_flag: @toilet.wash_flag, woman_wa: @toilet.woman_wa, woman_you: @toilet.woman_you }
    assert_redirected_to toilet_path(assigns(:toilet))
  end

  test "should destroy toilet" do
    assert_difference('Toilet.count', -1) do
      delete :destroy, id: @toilet
    end

    assert_redirected_to toilets_path
  end
end
