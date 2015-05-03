class SfmodulesController < ApplicationController
  before_action :set_sfmodule, only: [:show, :edit, :update, :destroy]

  # GET /sfmodules
  # GET /sfmodules.json
  def index
    @sfmodules = Sfmodule.all
  end

  # GET /sfmodules/1
  # GET /sfmodules/1.json
  def show
  end

  # GET /sfmodules/new
  def new
    @sfmodule = Sfmodule.new
  end

  # GET /sfmodules/1/edit
  def edit
  end

  # POST /sfmodules
  # POST /sfmodules.json
  def create
    @sfmodule = Sfmodule.new(sfmodule_params)

    respond_to do |format|
      if @sfmodule.save
        format.html { redirect_to sfmodules_path, notice: 'Sfmodule was successfully created.' }
        format.json { render :show, status: :created, location: @sfmodule }
      else
        format.html { render :new }
        format.json { render json: @sfmodule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sfmodules/1
  # PATCH/PUT /sfmodules/1.json
  def update
    respond_to do |format|
      if @sfmodule.update(sfmodule_params)
        format.html { redirect_to sfmodules_path, notice: 'Sfmodule was successfully updated.' }
        format.json { render :show, status: :ok, location: @sfmodule }
      else
        format.html { render :edit }
        format.json { render json: @sfmodule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sfmodules/1
  # DELETE /sfmodules/1.json
  def destroy
    @sfmodule.destroy
    respond_to do |format|
      format.html { redirect_to sfmodules_url, notice: 'Sfmodule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sfmodule
      @sfmodule = Sfmodule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sfmodule_params
      params.require(:sfmodule).permit(:name, :pillar_id)
    end
end
