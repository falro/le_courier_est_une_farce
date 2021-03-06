class CommandsController < ApplicationController
  before_action :set_command, only: [:show, :edit, :update, :destroy]
  
  def price
    @prank = Prank.find(params[:prank_id])
    @letter = Letter.find(params[:letter_id])
    @price = (@prank.price*@letter.weight/10)+@letter.price
  end

  # GET /commands
  # GET /commands.json
  def index
    @commands = Command.all
    @command = Command.new
  end

  # GET /commands/1
  # GET /commands/1.json
  def show
  end

  # GET /commands/new
  def new
    @command = Command.new
    @command.prank_type = @prank_type
    @command.prank = @prank
    @command.letter = @letter
    @command.type_letter = @type_letter
    
  end

  # GET /commands/1/edit
  def edit
  end

  # POST /commands
  # POST /commands.json
  def create
    @command = Command.new(command_params)
    # @command = Command.new(params[:command])

    respond_to do |format|
      format.js
      if @command.save
        format.html { redirect_to new_command_charge_path(@command), notice: 'Command was successfully created.' }
        format.json { render :show, status: :created, location: @command }
      else
        format.html { render :new }
        format.json { render json: @command.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commands/1
  # PATCH/PUT /commands/1.json
  def update
    respond_to do |format|
      if @command.update(command_params)
        format.html { redirect_to @command, notice: 'Command was successfully updated.' }
        format.json { render :show, status: :ok, location: @command }
      else
        format.html { render :edit }
        format.json { render json: @command.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commands/1
  # DELETE /commands/1.json
  def destroy
    @command.destroy
    respond_to do |format|
      format.html { redirect_to commands_url, notice: 'Command was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_command
      @command = Command.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def command_params
      params.require(:command).permit(:prank_type_id, :prank_id, :type_letter_id, :letter_id, :message, :totalPrice, :Address)
    end
end
