require 'test_helper'

class Admin::SpecificationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Specification.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Specification.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Specification.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_specification_url(assigns(:specification))
  end

  def test_edit
    get :edit, :id => Specification.first
    assert_template 'edit'
  end

  def test_update_invalid
    Specification.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Specification.first
    assert_template 'edit'
  end

  def test_update_valid
    Specification.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Specification.first
    assert_redirected_to admin_specification_url(assigns(:specification))
  end

  def test_destroy
    specification = Specification.first
    delete :destroy, :id => specification
    assert_redirected_to admin_specifications_url
    assert !Specification.exists?(specification.id)
  end
end
