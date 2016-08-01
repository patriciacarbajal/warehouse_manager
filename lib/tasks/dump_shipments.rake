require_relative './../../app/models/warehouse.rb'

namespace :warehouse do
  desc "Dump all shipments from warehouse"
  task :dump_shipments, [:warehouse_id] => :environment do |t, args|
    warehouse = Warehouse.find(args.warehouse_id)
    if warehouse.shipments.count > 0
      puts "#{warehouse.name}'s shipments have been loaded on a truck:"
      warehouse.shipments.each_with_index do |shipment, shipment_index|
        puts "Shipment #{shipment_index + 1} products shipped:"
        shipment.products.each_with_index do |product, product_index|
          puts "#{product_index + 1} - #{product.name}"
        end
        shipment.destroy
      end
    else
      puts "#{warehouse.name}'s shipments have already been shipped!"
    end
  end
end