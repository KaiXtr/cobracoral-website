class UsuariosController < ApplicationController
    def index
        # Redirecionar usuário não autenticado
        @usuario_autenticado = usuario_autenticado
        redirect_to '/entrar' unless @usuario_autenticado
        
        @usuarios = Usuario.all_except(@usuario_autenticado)
    end
  
    def create
        @usuario = Usuario.create(nome_completo: params["usuario"]["nome_completo"])
    end

    def show
        @usuario = Usuario.find(params[:id])
    end

    def perfil
        @usuario = usuario_autenticado
        redirect_to edit_usuario_path(@usuario)
    end

    def caixa
        redirect_to "https://mail.google.com/mail"
    end
end
