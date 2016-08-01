class Shipment < ActiveRecord::Base
  belongs_to :warehouse
  has_many :products,  dependent: :destroy 
end
