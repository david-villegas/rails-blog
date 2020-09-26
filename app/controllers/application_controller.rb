class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :handle_exception
  rescue_from Net::SMTPAuthenticationError, with: :handle_smtp_auth

  private

  def handle_exception
    redirect_back fallback_location: home_index_path, alert: "Registro no encontrado"
  end

  def handle_smtp_auth
    redirect_back fallback_location: home_index_path, alert: "Hubo un problema de conexión con nuestro Servidor de Correos, Por Favor intente mas tarde."
  end
end
