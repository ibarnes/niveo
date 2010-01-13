class ContactUs < ActiveRecord::Base
  attr_accessible :name, :email, :company, :porject
  validates_format_of     :email,
                        :with       => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                        :message    => 'email must be valid'
end
