class PatientsController < ApplicationController
  def index
    @patients = Patient.all.includes(:user)
  end

  def new; end

  def create; end

  def show; end

  def edit; end

  def update; end

  def destroy; end
end
