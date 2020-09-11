class Dashboard::ContrepartieController < ApplicationController
  def new
  end

  def show
     puts "*a"*10000
  end

  def index
     puts "c"*10000
  end
  def create
    Contrepartie.create(
    [description10: params[:description10],description40: params[:description40],
    jeuton_contrepartie: params[:jeuton_contrepartie],quantite: params[:quantite],
    address_valifunder: params[:address_valifunder], envoie: params[:envoie],check_val: params[:check_val],
    quantity_box: params[:quantity_box]]
    )
    #Contrepartie.last.attach(contrepartie_img: params[:contrepartie_img])

  end

end
