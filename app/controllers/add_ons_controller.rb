class AddOnsController < ApplicationController
  before_action :set_add_on, only: %i[ show edit update destroy ]

  # GET /add_ons or /add_ons.json
  def index
    @add_ons = AddOn.all
    render :index
  end

  # GET /add_ons/1 or /add_ons/1.json
  def show
    @add_on = AddOn.find(params[:id])
  end

  # GET /add_ons/new
  def new
    @add_on = AddOn.new
  end

  # GET /add_ons/1/edit
  def edit
  end

  # POST /add_ons or /add_ons.json
  def create
    @add_on = AddOn.new(add_on_params)

    respond_to do |format|
      if @add_on.save
        format.html { redirect_to add_on_url(@add_on), notice: "Add on was successfully created." }
        format.json { render :show, status: :created, location: @add_on }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @add_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_ons/1 or /add_ons/1.json
  def update
    respond_to do |format|
      if @add_on.update(add_on_params)
        format.html { redirect_to add_on_url(@add_on), notice: "Add on was successfully updated." }
        format.json { render :show, status: :ok, location: @add_on }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @add_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_ons/1 or /add_ons/1.json
  def destroy
    @add_on.destroy

    respond_to do |format|
      format.html { redirect_to add_ons_url, notice: "Add on was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_on
      @add_on = AddOn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_on_params
      params.require(:add_on).permit(:name, :servings, :price, :category)
    end
end
