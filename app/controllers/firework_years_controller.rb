class FireworkYearsController < ApplicationController
  before_action :set_firework_year, only: [:show, :edit, :update, :destroy]

  # GET /firework_years
  # GET /firework_years.json
  def index
    @firework_years = FireworkYear.all
  end

  # GET /firework_years/1
  # GET /firework_years/1.json
  def show
  end

  # GET /firework_years/new
  def new

    @firework_year = FireworkYear.new
    @firework_id = params[:id]
    # @firework = @firework_id
    @firework_name = params[:firework_name]
  end

  # GET /firework_years/1/edit
  def edit
  end

  # POST /firework_years
  # POST /firework_years.json
  def create
    @firework_year = FireworkYear.new(firework_year_params)

    respond_to do |format|
      if @firework_year.save
        format.html { redirect_to @firework_year, notice: 'Firework year was successfully created.' }
        format.json { render :show, status: :created, location: @firework_year }
      else
        format.html { render :new }
        format.json { render json: @firework_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firework_years/1
  # PATCH/PUT /firework_years/1.json
  def update
    respond_to do |format|
      if @firework_year.update(firework_year_params)
        format.html { redirect_to @firework_year, notice: 'Firework year was successfully updated.' }
        format.json { render :show, status: :ok, location: @firework_year }
      else
        format.html { render :edit }
        format.json { render json: @firework_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firework_years/1
  # DELETE /firework_years/1.json
  def destroy
    @firework_year.destroy
    respond_to do |format|
      format.html { redirect_to firework_years_url, notice: 'Firework year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firework_year
      @firework_year = FireworkYear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def firework_year_params
      params.require(:firework_year).permit(:year)
    end
end
