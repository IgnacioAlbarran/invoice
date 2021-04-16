class InvoiceHeader < ApplicationRecord
  validates :dni, presence: true
end
