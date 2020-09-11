module Dashboard::User::ProjectHelper
  def database_raquest(elem)
    categ = elem[0]
    odd = elem[1]
    status = elem[2]
    region = elem[3]
    if categ.blank? && odd.blank? && status.blank? && region.blank?
      return Project.all
    else
        if categ && odd.blank? && status.blank? && region.blank?
          categorie = AdminAboutCategorie.where(name: categ)
          unless categorie.blank?
            return categorie.projects
          else
            return "#{categ} has no value in the database"
          end
        end
        if categ.blank? && odd && status.blank? && region.blank?
          new_odd = AdminAboutOdd.where(name: odd)
          unless new_odd.blank?
            return "#{odd} has no matching value in database"
          else
            return new_odd.projects
          end
        end
        if categ.blank? && odd.blank? && status.blank? && region
          reg = AdminAboutRegion.where(name: reg)
          unless new_odd.blank?
            return "#{reg} has no matching value in database"
          else
            return reg.projects
          end
        end
        if categ.blank? && odd.blank? && status && region.blank?
          if status == 'course'
            return Project.where(is_cours: true)
          end
          if status =='finish'
            return Project.where(is_finished: false)
          end
        end
    end
  end
end
