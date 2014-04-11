class ProgramsController < ApplicationController
  # GET /programs
  # GET /programs.json
  def index
    @programs = Program.all

    render :layout => 'metro' and return
  end

  # GET /programs/1
  # GET /programs/1.json
  def show
    @program = Program.find(params[:id])

    render :layout => 'metro' and return
  end

  # GET /programs/new
  # GET /programs/new.json
  def new
    @program = Program.new

    render :layout => 'metro' and return
  end

  # GET /programs/1/edit
  def edit
    @program = Program.find(params[:id])

    render :layout => 'metro' and return
  end

  # POST /programs
  # POST /programs.json
  def create
    @program = Program.new(params[:program])

    respond_to do |format|
      if @program.save
        redirect_to programs_url, notice: 'Program was successfully created.' and return
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /programs/1
  # PUT /programs/1.json
  def update
    @program = Program.find(params[:id])

    respond_to do |format|
      if @program.update_attributes(params[:program])
        redirect_to programs_url, :notice => 'Program successfully updated.' and return
      else
        render action: "edit"
      end
    end
  end

  # DELETE /programs/1
  # DELETE /programs/1.json
  def destroy
    @program = Program.find(params[:id])
    @program.destroy

    respond_to do |format|
      format.html { redirect_to programs_url }
      format.json { head :no_content }
    end
  end
end
