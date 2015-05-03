class SfpillarsController < ApplicationController
  before_action :set_sfpillar, only: [:show, :edit, :update, :destroy]

  # GET /sfpillars
  # GET /sfpillars.json
  def index
    @sfpillars = Sfpillar.all
  end

  # GET /sfpillars/1
  # GET /sfpillars/1.json
  def show
  end

  # GET /sfpillars/new
  def new
    @sfpillar = Sfpillar.new
  end

  # GET /sfpillars/1/edit
  def edit
  end

  # POST /sfpillars
  # POST /sfpillars.json
  def create
    @sfpillar = Sfpillar.new(sfpillar_params)

    respond_to do |format|
      if @sfpillar.save
        format.html { redirect_to @sfpillar, notice: 'Pillar was successfully created.' }
        format.json { render :show, status: :created, location: @sfpillar }
      else
        format.html { render :new }
        format.json { render json: @sfpillar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sfpillars/1
  # PATCH/PUT /sfpillars/1.json
  def update
    respond_to do |format|
      if @sfpillar.update(sfpillar_params)
        format.html { redirect_to @sfpillar, notice: 'Pillar was successfully updated.' }
        format.json { render :show, status: :ok, location: @sfpillar }
      else
        format.html { render :edit }
        format.json { render json: @sfpillar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sfpillars/1
  # DELETE /sfpillars/1.json
  def destroy
    @sfpillar.destroy
    respond_to do |format|
      format.html { redirect_to sfpillars_url, notice: 'Pillar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sfpillar
      @sfpillar = Sfpillar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sfpillar_params
      params.require(:sfpillar).permit(:name)
    end
end
