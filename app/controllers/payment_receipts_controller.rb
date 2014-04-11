class PaymentReceiptsController < ApplicationController
  # GET /payment_receipts
  # GET /payment_receipts.json
  def index
    @payment_receipts = PaymentReceipt.all

    render :layout => 'metro'
  end

  # GET /payment_receipts/1
  # GET /payment_receipts/1.json
  def show
    @payment_receipt = PaymentReceipt.find(params[:id])

    render :layout => 'metro'
  end

  # GET /payment_receipts/new
  # GET /payment_receipts/new.json
  def new
    @payment_receipt = PaymentReceipt.new

    render :layout => 'metro'
  end

  # GET /payment_receipts/1/edit
  def edit
    @payment_receipt = PaymentReceipt.find(params[:id])
    render :layout => 'metro'
  end

  # POST /payment_receipts
  # POST /payment_receipts.json
  def create
    @payment_receipt = PaymentReceipt.new(params[:payment_receipt])

    respond_to do |format|
      if @payment_receipt.save
        redirect_to payment_receipts_url, notice: 'Payment receipt was successfully created.'
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /payment_receipts/1
  # PUT /payment_receipts/1.json
  def update
    @payment_receipt = PaymentReceipt.find(params[:id])

    respond_to do |format|
      if @payment_receipt.update_attributes(params[:payment_receipt])
        redirect_to payment_receipts_url, notice: 'Payment receipt was successfully updated.'
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /payment_receipts/1
  # DELETE /payment_receipts/1.json
  def destroy
    @payment_receipt = PaymentReceipt.find(params[:id])
    @payment_receipt.destroy
u

    respond_to do |format|
      format.html { redirect_to payment_receipts_url }
      format.json { head :no_content }
    end
  end

  def receive
    @payment_receipt = PaymentReceipt.create!(reference_number: params['Treference'],
                                              receipt_number: params['receipt'],
                                              amount: params['amount'],
                                              card_type: params['crd'],
                                              registration_transaction_id: params['order'].to_i,
                                              description: params['description'])
  end

  def display
    @payment_receipt = PaymentReceipt.find(params[:id])
  end
end
