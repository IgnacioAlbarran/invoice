class InvoiceHeader < ApplicationRecord
  has_many :invoice_lines

  validates :dni, presence: true
end
