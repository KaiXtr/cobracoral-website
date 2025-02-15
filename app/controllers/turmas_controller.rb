class TurmasController < ApplicationController
	def index
		# Redirecionar usuário não autenticado
		@usuario_autenticado = usuario_autenticado
		redirect_to '/entrar' unless @usuario_autenticado

		@turma = Turma.new
		@turmas = Turma.all
		@usuarios = Usuario.all_except(@usuario_autenticado)
		@cursos = Curso.all
	end

	def create
		@turma = Turma.create(nome_turma: params["turma"]["nome_turma"])
	end

	def show
		@turma = Turma.find(params[:id])
	end
end
