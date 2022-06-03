class TaslsController < ApplicationController
  before_action :set_tasl, only: %i[ show edit update destroy ]

  # GET /tasls or /tasls.json
  def index
    @tasls = Tasl.all
  end

  # GET /tasls/1 or /tasls/1.json
  def show
  end

  # GET /tasls/new
  def new
    @tasl = Tasl.new
  end

  # GET /tasls/1/edit
  def edit
  end

  # POST /tasls or /tasls.json
  def create
    @tasl = Tasl.new(tasl_params)

    respond_to do |format|
      if @tasl.save
        format.html { redirect_to tasl_url(@tasl), notice: "Tasl was successfully created." }
        format.json { render :show, status: :created, location: @tasl }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tasl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasls/1 or /tasls/1.json
  def update
    respond_to do |format|
      if @tasl.update(tasl_params)
        format.html { redirect_to tasl_url(@tasl), notice: "Tasl was successfully updated." }
        format.json { render :show, status: :ok, location: @tasl }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tasl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasls/1 or /tasls/1.json
  def destroy
    @tasl.destroy

    respond_to do |format|
      format.html { redirect_to tasls_url, notice: "Tasl was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasl
      @tasl = Tasl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tasl_params
      params.require(:tasl).permit(:title, :content)
    end
end
