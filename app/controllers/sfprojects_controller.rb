class SfprojectsController < ApplicationController
  before_action :set_sfproject, only: [:show, :edit, :update, :destroy]

  # GET /sfprojects
  # GET /sfprojects.json
  def index
    @sfprojects = Sfproject.all
  end

  # GET /sfprojects/1
  # GET /sfprojects/1.json
  def show
  end

  # GET /sfprojects/new
  def new
    @sfproject = Sfproject.new
  end

  # GET /sfprojects/1/edit
  def edit
  end

  # POST /sfprojects
  # POST /sfprojects.json
  def create
    @sfproject = Sfproject.new(sfproject_params)

    respond_to do |format|
      if @sfproject.save
        format.html { redirect_to sfprojects_path, notice: 'Sfproject was successfully created.' }
        format.json { render :show, status: :created, location: @sfproject }
      else
        format.html { render :new }
        format.json { render json: @sfproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sfprojects/1
  # PATCH/PUT /sfprojects/1.json
  def update
    respond_to do |format|
      if @sfproject.update(sfproject_params)
        format.html { redirect_to sfprojects_path, notice: 'Sfproject was successfully updated.' }
        format.json { render :show, status: :ok, location: @sfproject }
      else
        format.html { render :edit }
        format.json { render json: @sfproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sfprojects/1
  # DELETE /sfprojects/1.json
  def destroy
    @sfproject.destroy
    respond_to do |format|
      format.html { redirect_to sfprojects_url, notice: 'Sfproject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sfproject
      @sfproject = Sfproject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sfproject_params
      params.require(:sfproject).permit(:name, :release_id, :scope_id, :module_id)
    end
end
