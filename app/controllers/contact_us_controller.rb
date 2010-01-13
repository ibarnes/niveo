class ContactUsController < ApplicationController
  def index
    @contact_us = ContactUs.all
  end
  
  def show
    @contact_us = ContactUs.find(params[:id])
  end
  
  def new
    @contact_us = ContactUs.new
  end
  
  def create
    @contact_us = ContactUs.new(params[:contact_us])
    if @contact_us.save
      flash[:notice] = "We'll be getting in touch soon."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @contact_us = ContactUs.find(params[:id])
  end
  
  def update
    @contact_us = ContactUs.find(params[:id])
    if @contact_us.update_attributes(params[:contact_us])
      flash[:notice] = "Successfully updated contact us."
      redirect_to @contact_us
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @contact_us = ContactUs.find(params[:id])
    @contact_us.destroy
    flash[:notice] = "Successfully destroyed contact us."
    redirect_to contact_us_url
  end
end
