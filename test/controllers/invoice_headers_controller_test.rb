require 'test_helper'

class InvoiceHeadersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice_header = invoice_headers(:one)
  end

  test "should get index" do
    get invoice_headers_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_header_url
    assert_response :success
  end

  test "should create invoice_header" do
    assert_difference('InvoiceHeader.count') do
      post invoice_headers_url, params: { invoice_header: { address: @invoice_header.address, dni: @invoice_header.dni, email: @invoice_header.email, last_name1: @invoice_header.last_name1, last_name2: @invoice_header.last_name2, name: @invoice_header.name, tasas: @invoice_header.tasas, telephone: @invoice_header.telephone, total: @invoice_header.total } }
    end

    assert_redirected_to invoice_header_url(InvoiceHeader.last)
  end

  test "should show invoice_header" do
    get invoice_header_url(@invoice_header)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_header_url(@invoice_header)
    assert_response :success
  end

  test "should update invoice_header" do
    patch invoice_header_url(@invoice_header), params: { invoice_header: { address: @invoice_header.address, dni: @invoice_header.dni, email: @invoice_header.email, last_name1: @invoice_header.last_name1, last_name2: @invoice_header.last_name2, name: @invoice_header.name, tasas: @invoice_header.tasas, telephone: @invoice_header.telephone, total: @invoice_header.total } }
    assert_redirected_to invoice_header_url(@invoice_header)
  end

  test "should destroy invoice_header" do
    assert_difference('InvoiceHeader.count', -1) do
      delete invoice_header_url(@invoice_header)
    end

    assert_redirected_to invoice_headers_url
  end
end
