class Owner < ActiveRecord::Base
  attr_accessible :active, :city, :country, :email, :first_name, :id, :last_name, :phone, :street
end
