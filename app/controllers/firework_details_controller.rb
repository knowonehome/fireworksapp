class FireworkDetailsController < ApplicationController
  before_action :set_firework_detail, only: [:show, :edit, :update, :destroy]

  # GET /firework_details
  # GET /firework_details.json
  def index
    @firework_details = FireworkDetail.all
  end

  # GET /firework_details/1
  # GET /firework_details/1.json
  def show
  end

  # GET /firework_details/new
  def new
    @firework_detail = FireworkDetail.new
    @firework_year = @firework_detail.build_firework_year
    @firework_id = params[:id]
  end

  # GET /firework_details/1/edit
  def edit
  end

  # POST /firework_details
  # POST /firework_details.json
  def create
    @firework_detail = FireworkDetail.new(firework_detail_params)

    respond_to do |format|
      if @firework_detail.save
        @firework = @firework_detail.firework
        @firework_year = @firework_detail.firework_year
        format.html { redirect_to @firework, notice: 'Firework detail was successfully created.' }
        format.json { render :show, status: :created, location: @firework }
      else
        format.html { render :new }
        format.json { render json: @firework_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firework_details/1
  # PATCH/PUT /firework_details/1.json
  def update
    respond_to do |format|
      if @firework_detail.update(firework_detail_params)
        format.html { redirect_to @firework_detail, notice: 'Firework detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @firework_detail }
      else
        format.html { render :edit }
        format.json { render json: @firework_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firework_details/1
  # DELETE /firework_details/1.json
  def destroy
    @firework_detail.destroy
    respond_to do |format|
      format.html { redirect_to firework_details_url, notice: 'Firework detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firework_detail
      @firework_detail = FireworkDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def firework_detail_params
      params.require(:firework_detail).permit(:stash, :quantity, :price, :firework_id, :firework_year_id, firework_years_attributes: [:year, :id])
    end
end
