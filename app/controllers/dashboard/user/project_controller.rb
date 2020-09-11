class Dashboard::User::ProjectController < ApplicationController
  include Dashboard::User::ProjectHelper
  skip_before_action :verify_authenticity_token

  def index
    @all = self.welcome_render_image()
    @count_project = Project.all.count
    @odd = AdminAboutOdd.all
    @region = AdminAboutRegion.all
    @categorie = AdminAboutCategorie.all

    # update pourcentage && rest_day in table projects
  end

  def show
    id = params[:id].to_i
    @details = Project.find(id)
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  def new
  end
  def search_all_project
    parametres = params[:id]
    @value = self.database_raquest(parametres)
    puts "*"*100
    puts @value.inspect
    puts "*"*100
    render json: @value
  end

end
