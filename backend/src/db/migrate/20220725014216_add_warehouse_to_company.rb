class AddWarehouseToCompany < ActiveRecord::Migration[7.0]
  def change
    add_reference :warehouses, :company
  end
end
