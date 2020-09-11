module Dashboard::MyProjectHelper
  def res(attach)
    @attach = attach
    if !params[:idea_title].blank? || !params[:explication_idea].blank?
      @attach.idea.update(title: params[:idea_title],explication: params[:explication_idea])
    end
    if !params[:solution_title].blank? || !params[:explication_solution].blank?
      @attach.solution.update(title: params[:solution_title],explication: params[:explication_solution])
    end
    if !params[:advantage_title].blank? || !params[:explication_advantage].blank?
      @attach.solution.update(title: params[:advantage_title],explication: params[:explication_advantage])
    end
    if params[:categorie] != @attach.admin_about_categorie_id
      @attach.update(admin_about_categorie_id: params[:categorie])
    end
    if params[:odd] != @attach.admin_about_odd_id
      @attach.update(admin_about_odd_id: params[:odd])
    end
    if params[:title] != @attach.title
      @attach.update(title: params[:title])
    end
    if params[:slogan] != @attach.slogan
      @attach.update(slogan: params[:slogan])
    end
    if params[:montant] != @attach.jeuton
      @attach.update(jeuton: params[:montant])
    end
    if params[:day] != @attach.number_day
      @attach.update(number_day: params[:day])
    end
    if !params[:project_img].blank?
      @attach.project_img.attach(params[:project_img])
    end
    if !params[:project_video].blank?
      @attach.project_video.attach(params[:project_video])
    end
  end

  def diaporama(attach)
    @attach = attach
    if !params[:diapo1].blank?
      @attach.diapo1.attach(params[:diapo1])
    end
    if !params[:diapo2].blank?
      @attach.diapo2.attach(params[:diapo2])
    end
    if !params[:diapo3].blank?
      @attach.diapo3.attach(params[:diapo3])
    end
    if !params[:diapo4].blank?
      @attach.diapo4.attach(params[:diapo4])
    end
    if !params[:diapo5].blank?
      @attach.diapo5.attach(params[:diapo5])
    end
    if !params[:diapo6].blank?
      @attach.diapo6.attach(params[:diapo6])
    end
  end
end
