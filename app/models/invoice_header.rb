class InvoiceHeader < ApplicationRecord
  has_many :invoice_lines

  validates :dni, presence: true

  IVA = 0.21

  def get_tasas
    tasas = 0
    invoice_lines.each do |line|
      tasas += (line.get_total * IVA)
    end
    tasas = tasas.round(2)
  end

  def get_total_header
    total = 0
    invoice_lines.each do |line|
      total += line.get_total
    end
    total
  end
end
