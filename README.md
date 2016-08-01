## Warehouse manager

Simple example of a database relationship between warehouses, shipments, and products.

A shipment is a set of products that need to be shipped somewhere. 

A warehouse is a facility that can store products and ship a shipment. 

Someone at the warehouse will do a daily dump of the shipments that have been assigned to ship out from that warehouse and get them packed up and put on a truck. 

This is represented by a rake task, <tt>rake warehouse:dump_shipments[warehouse_id]</tt>


To use, first clone this repo.

Run <tt>bundle install</tt>

Run <tt>rake db:create</tt>

Run <tt>rake db:migrate</tt>

Run <tt>rake db:seed</tt>

This will seed the database with 2 warehouses (ids 1 and 2), with 3 shipments and 12 products split up between the shipments.

Each shipment is assigned to a warehouse.

To dump shipments from warehouse 1, run <tt>rake warehouse:dump_shipments[1]</tt>

To dump shipments from warehouse 2, run <tt>rake warehouse:dump_shipments[2]</tt>

If you run either rake task a second time, you will see that the shipment has already been made. This is because all shipments for that warehouse are destroyed once they are shipped.

