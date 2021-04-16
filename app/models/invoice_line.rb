class InvoiceLine < ApplicationRecord
  belongs_to :invoice_header

  def get_total
    price * quantity
  end
end
