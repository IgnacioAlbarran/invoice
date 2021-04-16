class CreateInvoiceHeaders < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_headers do |t|
      t.string :name
      t.string :last_name1
      t.string :last_name2
      t.string :dni
      t.string :address
      t.integer :telephone
      t.string :email
      t.integer :tasas
      t.integer :total

      t.timestamps
    end
  end
end
