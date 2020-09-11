class ApplicationController < ActionController::Base

  skip_before_action :verify_authenticity_token, only: [:check_email_if_exist]

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :update_all_value_in_project


	include ApplicationHelper

  def check_email_if_exist
    @email = params['email']
    @get_user_if_exist = User.find_by(email: @email)
    if @get_user_if_exist
      # if email exist
      render json: {'status':'true','email':@email}
    else
      render json: {'status':'false','email':''}
    end
  end


 protected
  def configure_permitted_parameters
    attributes = [:first,:last,:pseudo,:country,:region,:address,:mobile,:university,:diplome, :school_year,:takalo,:birthday,:nature]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end

  def update_all_value_in_project
    for i in Project.all
      t = Time.now()
			y_end_project = (t.year - i.created_at.strftime("%Y").to_i) * 365
			m_end_project = (t.month - i.created_at.strftime("%m").to_i) * 30
			d_end_project = t.day - i.created_at.strftime("%d").to_i
			d_project = i.number_day - (y_end_project + m_end_project + d_end_project)
			i.update(rest_day: d_project) #update rest_day

      val = (i.collect_jeuton.to_i * 100) / i.jeuton
      i.update_attributes(pourcentage: val)
    end
  end

  def if_current_user
    unless current_user
      flash[:alert] = "Vous devez vous identifier :)"
      redirect_to new_user_session_path
    end
  end
end
