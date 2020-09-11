class WelcomeController < ApplicationController

  include WelcomeHelper

  def index
    # take every project in database and return json value and specify name (helper)
    @welcome = Project.all
    #
    @project = self.welcome_render_image() #helper method
  end
end
