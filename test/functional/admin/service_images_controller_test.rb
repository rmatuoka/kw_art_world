require 'test_helper'

class Admin::ServiceImagesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ServiceImages.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ServiceImages.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ServiceImages.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_service_images_url(assigns(:service_images))
  end

  def test_edit
    get :edit, :id => ServiceImages.first
    assert_template 'edit'
  end

  def test_update_invalid
    ServiceImages.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ServiceImages.first
    assert_template 'edit'
  end

  def test_update_valid
    ServiceImages.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ServiceImages.first
    assert_redirected_to admin_service_images_url(assigns(:service_images))
  end

  def test_destroy
    service_images = ServiceImages.first
    delete :destroy, :id => service_images
    assert_redirected_to admin_service_images_url
    assert !ServiceImages.exists?(service_images.id)
  end
end
