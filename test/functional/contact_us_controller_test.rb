require 'test_helper'

class ContactUsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => ContactUs.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    ContactUs.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    ContactUs.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to contact_us_url(assigns(:contact_us))
  end
  
  def test_edit
    get :edit, :id => ContactUs.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    ContactUs.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ContactUs.first
    assert_template 'edit'
  end
  
  def test_update_valid
    ContactUs.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ContactUs.first
    assert_redirected_to contact_us_url(assigns(:contact_us))
  end
  
  def test_destroy
    contact_us = ContactUs.first
    delete :destroy, :id => contact_us
    assert_redirected_to contact_us_url
    assert !ContactUs.exists?(contact_us.id)
  end
end
