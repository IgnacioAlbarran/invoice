class InvoiceLinesController < ApplicationController
  before_action :set_invoice_line, only: %i[ show edit update destroy ]

  # GET /invoice_lines or /invoice_lines.json
  def index
    @invoice_lines = InvoiceLine.all
  end

  # GET /invoice_lines/1 or /invoice_lines/1.json
  def show
  end

  # GET /invoice_lines/new
  def new
    @invoice_line = InvoiceLine.new
    @invoice_header = InvoiceHeader.find(params[:id])
  end

  # GET /invoice_lines/1/edit
  def edit
  end

  # POST /invoice_lines or /invoice_lines.json
  def create
    @invoice_line = InvoiceLine.new(invoice_line_params)
    @invoice_line.total = @invoice_line.get_total

    respond_to do |format|
      if @invoice_line.save
        format.html { redirect_to invoice_header_path(@invoice_line.invoice_header_id), notice: "Linea de Factura creada con éxito." }
        format.json { render :show, status: :created, location: @invoice_line }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @invoice_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoice_lines/1 or /invoice_lines/1.json
  def update
    @invoice_line.total = @invoice_line.get_total
    respond_to do |format|
      if @invoice_line.update(invoice_line_params)
        format.html { redirect_to @invoice_line, notice: "Linea de Factura actualizada con éxito." }
        format.json { render :show, status: :ok, location: @invoice_line }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @invoice_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_lines/1 or /invoice_lines/1.json
  def destroy
    @invoice_line.destroy
    respond_to do |format|
      format.html { redirect_to invoice_header_path(@invoice_line.invoice_header_id), notice: "Linea de Factura destruida." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_line
      @invoice_line = InvoiceLine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoice_line_params
      params.require(:invoice_line).permit(:product, :quantity, :price, :invoice_header_id)
    end
end
