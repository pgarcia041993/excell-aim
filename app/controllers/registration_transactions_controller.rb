class RegistrationTransactionsController < ApplicationController
  # GET /registration_transactions
  # GET /registration_transactions.json
  def index
    @registration_transactions = RegistrationTransaction.all
    render :layout => 'metro' and return
  end

  # GET /registration_transactions/1
  # GET /registration_transactions/1.json
  def show
    @registration_transaction = RegistrationTransaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @registration_transaction }
    end
  end

  # GET /registration_transactions/new
  # GET /registration_transactions/new.json
  def new
    @registration_transaction = RegistrationTransaction.new
    render :layout => 'metro' and return
  end

  # GET /registration_transactions/1/edit
  def edit
    @registration_transaction = RegistrationTransaction.find(params[:id])
    render :layout => 'metro' and return
  end

  # POST /registration_transactions
  # POST /registration_transactions.json
  def create
    @registration_transaction = RegistrationTransaction.new(params[:registration_transaction])

    respond_to do |format|
      if @registration_transaction.save
        redirect_to registration_transactions_path, :notice => 'Registration transaction was successfully created' and return
      else
        format.html { render action: "new", layout: 'metro', :notice => 'Unable to save registration.' }
        format.json { render json: @registration_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /registration_transactions/1
  # PUT /registration_transactions/1.json
  def update
    @registration_transaction = RegistrationTransaction.find(params[:id])

    respond_to do |format|
      if @registration_transaction.update_attributes(params[:registration_transaction])
        redirect_to registration_transactions_path, :notice => 'Registration transaction was successfully updated' and return
      else
        format.html { render action: "edit" }
        format.json { render json: @registration_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_transactions/1
  # DELETE /registration_transactions/1.json
  def destroy
    @registration_transaction = RegistrationTransaction.find(params[:id])
    @registration_transaction.destroy
    render :layout => 'metro' and return
  end
end
