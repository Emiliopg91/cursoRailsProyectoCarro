class TiendaController < ApplicationController
  def index
    @art=Articulo.get_articulos
  end

  def quienes_somos
  end

  def contacto
  end

  def carro
    puts session[:cesta]
    if !params[:art].nil?
      session[:cesta]<<params[:art]
      flash[:notice]="Articulo añadido a la cesta: "+params[:nom]
      redirect_to inicio_url
    elsif !params[:vacia].nil?
      session[:cesta]=[]
      redirect_to inicio_url
    else
      @articulos=[]
      session[:cesta].each() do |a|
        @articulos << Articulo.find(a)
      end
      @total=0
    end
  end
  
  def login
    if params[:user].nil? 
      flash[:notice]="No se introdujo ningún usuario"
      redirect_to inicio_url
    elsif params[:user]!="admin"
      flash[:notice]="Nombre de usuario incorrecto"   
      redirect_to inicio_url
    else
      redirect_to articulos_path
    end
  end
end
