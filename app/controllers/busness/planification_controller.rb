class Busness::PlanificationController < ApplicationController
  def index
  end
  def create
    planification = Planification.create!(self.planification_params)
    if planification
      flash[:success] = "Votre bons Plans est enregistrer avec succès et sera bientôt disponible pour tous"
      redirect_to busness_planification_path(2)
    else
      flash[:alert] = "Une erreur est survenue lors de l'enregistrement de votre actions"
      render "new"
    end
  end
end
