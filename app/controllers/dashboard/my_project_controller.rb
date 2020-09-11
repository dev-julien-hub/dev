class Dashboard::MyProjectController < ApplicationController
  include Dashboard::MyProjectHelper
  before_action :if_current_user

  def index
    @my_project = Project.where(user_id: current_user.id)
  end

  def show
  end

  def edit
    project_id = params[:id]
    @modify = Project.find(project_id)
    @categorie = AdminAboutCategorie.all
    @odd = AdminAboutOdd.all
  end

  def update
    @attach = Project.find(params[:id])
    self.diaporama(@attach)
    self.res(@attach)
  end

  def destroy
  end

  def contrepartie

  end
end
