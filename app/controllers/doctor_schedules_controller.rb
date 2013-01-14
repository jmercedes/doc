class DoctorSchedulesController < ApplicationController
  # GET /doctor_schedules
  # GET /doctor_schedules.json
  def index
    @doctor_schedules = DoctorSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctor_schedules }
    end
  end

  # GET /doctor_schedules/1
  # GET /doctor_schedules/1.json
  def show
    @doctor_schedule = DoctorSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctor_schedule }
    end
  end

  # GET /doctor_schedules/new
  # GET /doctor_schedules/new.json
  def new
    @doctor_schedule = DoctorSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctor_schedule }
    end
  end

  # GET /doctor_schedules/1/edit
  def edit
    @doctor_schedule = DoctorSchedule.find(params[:id])
  end

  # POST /doctor_schedules
  # POST /doctor_schedules.json
  def create
    @doctor_schedule = DoctorSchedule.new(params[:doctor_schedule])

    respond_to do |format|
      if @doctor_schedule.save
        format.html { redirect_to @doctor_schedule, notice: 'Doctor schedule was successfully created.' }
        format.json { render json: @doctor_schedule, status: :created, location: @doctor_schedule }
      else
        format.html { render action: "new" }
        format.json { render json: @doctor_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_schedules/1
  # PUT /doctor_schedules/1.json
  def update
    @doctor_schedule = DoctorSchedule.find(params[:id])

    respond_to do |format|
      if @doctor_schedule.update_attributes(params[:doctor_schedule])
        format.html { redirect_to @doctor_schedule, notice: 'Doctor schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_schedules/1
  # DELETE /doctor_schedules/1.json
  def destroy
    @doctor_schedule = DoctorSchedule.find(params[:id])
    @doctor_schedule.destroy

    respond_to do |format|
      format.html { redirect_to doctor_schedules_url }
      format.json { head :no_content }
    end
  end
end
