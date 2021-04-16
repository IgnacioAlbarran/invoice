json.extract! invoice_header, :id, :name, :last_name1, :last_name2, :dni, :address, :telephone, :email, :tasas, :total, :created_at, :updated_at
json.url invoice_header_url(invoice_header, format: :json)
