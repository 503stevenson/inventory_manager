class Company < ApplicationRecord
  has_many :warehouses, class_name: "Warehouse"
  has_many :products, class_name: "Product"
end
