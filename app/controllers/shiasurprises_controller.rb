class ShiasurprisesController < ApplicationController
  before_action :set_shiasurprise, only: [:show, :edit, :update, :destroy]

  # GET /shiasurprises
  # GET /shiasurprises.json
  def index
    @shiasurprises = Shiasurprise.all
  end

  # GET /shiasurprises/1
  # GET /shiasurprises/1.json
  def show
  end

  # GET /shiasurprises/new
  def new
    @shiasurprise = Shiasurprise.new
  end

  # GET /shiasurprises/1/edit
  def edit
  end

  # POST /shiasurprises
  # POST /shiasurprises.json
  def create
    @shiasurprise = Shiasurprise.new(shiasurprise_params)

    respond_to do |format|
      if @shiasurprise.save
        format.html { redirect_to @shiasurprise, notice: 'Shiasurprise was successfully created.' }
        format.json { render :show, status: :created, location: @shiasurprise }
      else
        format.html { render :new }
        format.json { render json: @shiasurprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shiasurprises/1
  # PATCH/PUT /shiasurprises/1.json
  def update
    respond_to do |format|
      if @shiasurprise.update(shiasurprise_params)
        format.html { redirect_to @shiasurprise, notice: 'Shiasurprise was successfully updated.' }
        format.json { render :show, status: :ok, location: @shiasurprise }
      else
        format.html { render :edit }
        format.json { render json: @shiasurprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shiasurprises/1
  # DELETE /shiasurprises/1.json
  def destroy
    @shiasurprise.destroy
    respond_to do |format|
      format.html { redirect_to shiasurprises_url, notice: 'Shiasurprise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shiasurprise
      @shiasurprise = Shiasurprise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shiasurprise_params
      params.require(:shiasurprise).permit(:name, :amount)
    end
end
