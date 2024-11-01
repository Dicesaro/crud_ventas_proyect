class CategoriaController < ApplicationController
  before_action :set_categoria, only: %i[ show edit update destroy ]

  def index
    @categorias = Categoria.all
  end

 def show
  @categoria = Categoria.find(params[:id]) # Asegúrate de que esto esté aquí
end


  def new
    @categoria = Categoria.new
  end

  def edit
  end

  def create
    @categoria = Categoria.new(categoria_params)

    respond_to do |format|
      if @categoria.save
        format.html { redirect_to @categoria, notice: "Categoría creada con éxito." }
        format.json { render :show, status: :created, location: @categoria }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @categoria.update(categoria_params)
        format.html { redirect_to @categoria, notice: "Categoría actualizada con éxito." }
        format.json { render :show, status: :ok, location: @categoria }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @categoria.destroy!

    respond_to do |format|
      format.html { redirect_to categorias_path, status: :see_other, notice: "Categoría eliminada con éxito." }
      format.json { head :no_content }
    end
  end

  private
    def set_categoria
      @categoria = Categoria.find(params[:id])
    end

    def categoria_params
      params.require(:categoria).permit(:nombre, :descripcion, :fecha_creacion, :estado, :codigo, :tipo)
    end
end
