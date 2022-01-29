class PatientsController < ApplicationController
  before_action :set_post, only: %i[show edit update]
  def index
    @patients = Patient.all.includes(:user)
  end

  def new
    @patient = Patient.new
  end

  def create
    patient = current_user.patients.create!(patient_params)
    redirect_to patient
  end

  def show; end

  def edit; end

  def update; end

  def destroy; end

  private

  def set_post
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :birthday, :gender, :address, :degree_of_care, :key_person)
  end
end
