class InformationsController < ApplicationController
  def create
    information = Information.create(information_params)
    redirect_to patient_path(information.patient.id)
  end

  def destroy
    Information.find_by(id: params[:id], patient_id: params[:patient_id]).destroy
    redirect_to patient_path(params[:patient_id])
  end

  private

  def information_params
    params.require(:information).permit(:comment).merge(user_id: current_user.id, patient_id: params[:patient_id])
  end
end
