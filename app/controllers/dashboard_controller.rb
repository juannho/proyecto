class DashboardController < ApplicationController

 before_action :set_directory, only: [:show, :edit, :update, :destroy]

  # GET /directories
  # GET /directories.json
  def index
    @directories = Directory.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_directory
      @directory = Directory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def directory_params
      #params.require(:directory).permit(:user_id, :category_id, :nombre, :descripcion, :direccion, :comuna, :ciudad, :region, :telefono, :codigo_area, :celular, :email, :foto_perfil, :foto_portada, :estado, :layout)
      params.require(:directory).permit(:category_id, :nombre, :descripcion, :direccion, :comuna, :ciudad, :region, :telefono, :codigo_area, :celular, :email, :foto_perfil, :foto_portada, :estado, :layout).merge(user_id: current_user.id) 
    end
  before_filter :authenticate_user!
end