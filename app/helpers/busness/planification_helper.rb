module Busness::PlanificationHelper
  private
  def planification_params
    params.require(:planification).permit(:title, :description, :amount, :place, :begin_date, :end_date, :duration ,slides: [])
  end
end
