require "application_system_test_case"

class InvoiceHeadersTest < ApplicationSystemTestCase
  setup do
    @invoice_header = invoice_headers(:one)
  end

  test "visiting the index" do
    visit invoice_headers_url
    assert_selector "h1", text: "Invoice Headers"
  end

  test "creating a Invoice header" do
    visit invoice_headers_url
    click_on "New Invoice Header"

    fill_in "Address", with: @invoice_header.address
    fill_in "Dni", with: @invoice_header.dni
    fill_in "Email", with: @invoice_header.email
    fill_in "Last name1", with: @invoice_header.last_name1
    fill_in "Last name2", with: @invoice_header.last_name2
    fill_in "Name", with: @invoice_header.name
    fill_in "Tasas", with: @invoice_header.tasas
    fill_in "Telephone", with: @invoice_header.telephone
    fill_in "Total", with: @invoice_header.total
    click_on "Create Invoice header"

    assert_text "Invoice header was successfully created"
    click_on "Back"
  end

  test "updating a Invoice header" do
    visit invoice_headers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @invoice_header.address
    fill_in "Dni", with: @invoice_header.dni
    fill_in "Email", with: @invoice_header.email
    fill_in "Last name1", with: @invoice_header.last_name1
    fill_in "Last name2", with: @invoice_header.last_name2
    fill_in "Name", with: @invoice_header.name
    fill_in "Tasas", with: @invoice_header.tasas
    fill_in "Telephone", with: @invoice_header.telephone
    fill_in "Total", with: @invoice_header.total
    click_on "Update Invoice header"

    assert_text "Invoice header was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice header" do
    visit invoice_headers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice header was successfully destroyed"
  end
end
