class Warehouse < ActiveRecord::Base
  has_many :shipments
  has_many :products, through: :shipments
end
