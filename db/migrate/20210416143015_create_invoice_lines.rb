class CreateInvoiceLines < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_lines do |t|
      t.string :product
      t.integer :quantity
      t.integer :price
      t.integer :total
      t.references :invoice_header, foreign_key: true

      t.timestamps
    end
  end
end
