require 'test_helper'

class Admin::CasesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Case.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Case.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Case.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_case_url(assigns(:case))
  end

  def test_edit
    get :edit, :id => Case.first
    assert_template 'edit'
  end

  def test_update_invalid
    Case.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Case.first
    assert_template 'edit'
  end

  def test_update_valid
    Case.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Case.first
    assert_redirected_to admin_case_url(assigns(:case))
  end

  def test_destroy
    case = Case.first
    delete :destroy, :id => case
    assert_redirected_to admin_cases_url
    assert !Case.exists?(case.id)
  end
end
