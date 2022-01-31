class PatientsController < ApplicationController
  before_action :set_post, only: %i[show edit update]

  PER_PAGE = 10

  def index
    @patients = Patient.all.includes(:user).order(:id).page(params[:page]).per(PER_PAGE)
  end

  def new
    @patient = Patient.new
  end

  def create
    patient = current_user.patients.create!(patient_params)
    redirect_to patient
  end

  def show
    @information = Information.new
    @informations = @patient.informations.includes(:user).order(created_at: :desc)
  end

  def edit; end

  def update
    @patient.update!(patient_params)
    redirect_to @patient
  end

  def destroy; end

  private

  def set_post
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :birthday, :gender, :address, :degree_of_care, :key_person)
  end
end
