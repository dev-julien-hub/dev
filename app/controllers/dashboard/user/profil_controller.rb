class Dashboard::User::ProfilController < ApplicationController

  before_action :if_current_user

  before_action :secure_connection_parameters

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def secure_connection_parameters
    user_id = params['user_id']
    puts current_user.id
    if user_id.to_i != current_user.id
      flash[:alert] = "Vous n'avez pas accès à cette requête"
      redirect_to "/dashboard/user/#{current_user.id}/profil"
    end
  end
end
