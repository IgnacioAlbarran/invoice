json.extract! invoice_line, :id, :product, :quantity, :price, :total, :header_invoice_id, :created_at, :updated_at
json.url invoice_line_url(invoice_line, format: :json)
