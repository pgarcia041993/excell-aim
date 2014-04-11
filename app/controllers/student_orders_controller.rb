class StudentOrdersController < ApplicationController
  # GET /student_orders
  # GET /student_orders.json
  def index
    @student_orders = StudentOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_orders }
    end
  end

  # GET /student_orders/1
  # GET /student_orders/1.json
  def show
    @student_order = StudentOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_order }
    end
  end

  # GET /student_orders/new
  # GET /student_orders/new.json
  def new
    @student_order = StudentOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_order }
    end
  end

  # GET /student_orders/1/edit
  def edit
    @student_order = StudentOrder.find(params[:id])
  end

  # POST /student_orders
  # POST /student_orders.json
  def create
    @student_order = StudentOrder.new(params[:student_order].merge!(dob: DateTime.strptime(params[:student_order][:dob], '%d/%m/%Y')))

    respond_to do |format|
      if @student_order.save
        format.html { redirect_to @student_order, notice: 'Student order was successfully created.' }
        format.json { render json: @student_order, status: :created, location: @student_order }
      else
        format.html { render action: "new" }
        format.json { render json: @student_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_orders/1
  # PUT /student_orders/1.json
  def update
    @student_order = StudentOrder.find(params[:id])

    respond_to do |format|
      if @student_order.update_attributes(params[:student_order].merge!(dob: DateTime.strptime(params[:student_order][:dob], '%m/%d/%Y')))
        format.html { redirect_to @student_order, notice: 'Student order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_orders/1
  # DELETE /student_orders/1.json
  def destroy
    @student_order = StudentOrder.find(params[:id])
    @student_order.destroy

    respond_to do |format|
      format.html { redirect_to student_orders_url }
      format.json { head :no_content }
    end
  end
end
