module ApplicationHelper
  def welcome_render_image()
    project_on_database = Project.limit(4)
    json_welcome_return = []
    for elem in project_on_database
			if elem.is_validate && elem.is_validate_admin   #verify if admnistrator valid?
				self.storage_value_on_json(elem, json_welcome_return)
			end
		end
		return json_welcome_return
	end




	def storage_value_on_json(elem,json_welcome_return) #this method can be store value
				json_welcome_return << {
						#about user who create project
					"user_own_first" => elem.user.first,
					"user_own_last" => elem.user.last,

						#about project
						"project_id" => elem.id,
						"project_title" => elem.title,
						"project_description" => elem.description,
						"project_categorie" => elem.admin_about_categorie.name,
						"project_odd" => elem.admin_about_odd.name,
						"project_localisation" => elem.localisation,
						"project_constatation" => elem.constatation,
						"project_financement" => elem.financement,

						#about page status
						#
						"project_status_finish" => elem.is_finished,
						"project_status_cours" => elem.is_cours,
						#jeuton
						"project_jeutons" => elem.jeuton,
						"collect" => elem.collect_jeuton,
						"pourcentage" => elem.pourcentage,

						#about day
						"rest_day" => elem.rest_day,
				}
	end

end
