class PrankTypesController < ApplicationController
  before_action :set_prank_type, only: [:show, :edit, :update, :destroy]

  # GET /prank_types
  # GET /prank_types.json
  def index
    @prank_types = PrankType.all.order(:name)
  end

  # GET /prank_types/1
  # GET /prank_types/1.json
  def show
  end

  # GET /prank_types/new
  def new
    @prank_type = PrankType.new
  end

  # GET /prank_types/1/edit
  def edit
    @prank_type = PrankType.find params[:id]
  end

  # POST /prank_types
  # POST /prank_types.json
  def create
    @prank_type = PrankType.new(prank_type_params)

    respond_to do |format|
      if @prank_type.save
        format.html { redirect_to @prank_type, notice: 'Prank type was successfully created.' }
        format.json { render :show, status: :created, location: @prank_type }
      else
        format.html { render :new }
        format.json { render json: @prank_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prank_types/1
  # PATCH/PUT /prank_types/1.json
  def update
    respond_to do |format|
      if @prank_type.update(prank_type_params)
        format.html { redirect_to @prank_type, notice: 'Prank type was successfully updated.' }
        format.json { render :show, status: :ok, location: @prank_type }
      else
        format.html { render :edit }
        format.json { render json: @prank_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prank_types/1
  # DELETE /prank_types/1.json
  def destroy
    @prank_type.destroy
    respond_to do |format|
      format.html { redirect_to prank_types_url, notice: 'Prank type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prank_type
      @prank_type = PrankType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prank_type_params
      params.require(:prank_type).permit(:name,:description)
    end
end
