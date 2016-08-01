class Product < ActiveRecord::Base
  belongs_to :shipment
  belongs_to :warehouse
end
