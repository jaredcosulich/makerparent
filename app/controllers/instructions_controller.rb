class InstructionsController < ApplicationController
  before_action :set_instruction, only: [:show, :edit, :update, :destroy]

  # GET /instructions
  def index
    @instructions = Instruction.all
  end

  # GET /instructions/1
  def show
  end

  # GET /instructions/new
  def new
    @instruction = Instruction.new
  end

  # GET /instructions/1/edit
  def edit
  end

  # POST /instructions
  def create
    @instruction = Instruction.new(instruction_params)

    if @instruction.save
      redirect_to @instruction, notice: 'Instruction was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /instructions/1
  def update
    if @instruction.update(instruction_params)
      redirect_to @instruction, notice: 'Instruction was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /instructions/1
  def destroy
    @instruction.destroy
    redirect_to instructions_url, notice: 'Instruction was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instruction
      @instruction = Instruction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def instruction_params
      params.require(:instruction).permit(:text, :position, :image)
    end
end
