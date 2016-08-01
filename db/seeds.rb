Warehouse.create(name: 'NYWarehouse')
Warehouse.create(name: 'SFWarehouse')
Shipment.create(warehouse_id: 1)
Shipment.create(warehouse_id: 2)
Shipment.create(warehouse_id: 1)

Product.create(name: 'twin_mattress', warehouse_id: 1, shipment_id: 1)
Product.create(name: 'twin_pillows', warehouse_id: 1, shipment_id: 1)
Product.create(name: 'twin_sheets', warehouse_id: 1, shipment_id: 1)

Product.create(name: 'full_mattress', warehouse_id: 2, shipment_id: 2)
Product.create(name: 'full_pillows', warehouse_id: 2, shipment_id: 2)
Product.create(name: 'full_sheets', warehouse_id: 2, shipment_id: 2)

Product.create(name: 'queen_mattress', warehouse_id: 1, shipment_id: 2)
Product.create(name: 'queen_pillows', warehouse_id: 1, shipment_id: 2)
Product.create(name: 'queen_sheets', warehouse_id: 1, shipment_id: 2)

Product.create(name: 'king_mattress', warehouse_id: 1, shipment_id: 3)
Product.create(name: 'king_pillows', warehouse_id: 1, shipment_id: 3)
Product.create(name: 'king_sheets', warehouse_id: 1, shipment_id: 3)
