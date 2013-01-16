class DoctorsController < ApplicationController
  # GET /doctors
  # GET /doctors.json
  def index
    @doctors = Doctor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctors }
    end
  end

  # GET /doctors/1
  # GET /doctors/1.json
  def show
    @doctor = Doctor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctor }
    end
  end

  # GET /doctors/new
  # GET /doctors/new.json
  def new
    @doctor = Doctor.new
    @branches = Branch.all
    @specialties = Specialty.all
    @locations = Location.all
    
    @doctor.schedules = (1..140).to_a.map{ @doctor.schedules.build }    
    days_of_the_week
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctor }
    end
  end

  # GET /doctors/1/edit
  def edit
    @doctor = Doctor.find(params[:id])
    @branches = Branch.all
    @specialties = Specialty.all
    @locations = Location.all
    
  end

  # POST /doctors
  # POST /doctors.json
  def create
    @doctor = Doctor.new(params[:doctor])    

    if @doctor.save
      flash[:notice] = "Doctor was successfully created"
      redirect_to doctors_path
    else
      render action: 'new'
    end
  end

  # PUT /doctors/1
  # PUT /doctors/1.json
  def update
    @doctor = Doctor.find(params[:id])

    respond_to do |format|
      if @doctor.update_attributes(params[:doctor])
        format.html { redirect_to @doctor, notice: 'Doctor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctors/1
  # DELETE /doctors/1.json
  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.destroy

    respond_to do |format|
      format.html { redirect_to doctors_url }
      format.json { head :no_content }
    end
  end
  
  def days_of_the_week
    @days = Array.new
    
    @days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  end
  
end
