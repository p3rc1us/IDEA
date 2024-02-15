class FurnitureItemsController < ApplicationController
  before_action :set_furniture_item, only: %i[ show edit update destroy ]

  # GET /furniture_items or /furniture_items.json
  def index
    @furniture_items = FurnitureItem.all
  end

  # GET /furniture_items/1 or /furniture_items/1.json
  def show
  end

  # GET /furniture_items/new
  def new
    @furniture_item = FurnitureItem.new
  end

  # GET /furniture_items/1/edit
  def edit
  end

  # POST /furniture_items or /furniture_items.json
  def create
    @furniture_item = FurnitureItem.new(furniture_item_params)

    respond_to do |format|
      if @furniture_item.save
        format.html { redirect_to furniture_item_url(@furniture_item), notice: "Furniture item was successfully created." }
        format.json { render :show, status: :created, location: @furniture_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @furniture_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /furniture_items/1 or /furniture_items/1.json
  def update
    respond_to do |format|
      if @furniture_item.update(furniture_item_params)
        format.html { redirect_to furniture_item_url(@furniture_item), notice: "Furniture item was successfully updated." }
        format.json { render :show, status: :ok, location: @furniture_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @furniture_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /furniture_items/1 or /furniture_items/1.json
  def destroy
    @furniture_item.destroy!

    respond_to do |format|
      format.html { redirect_to furniture_items_url, notice: "Furniture item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furniture_item
      @furniture_item = FurnitureItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def furniture_item_params
      params.require(:furniture_item).permit(:name, :material)
    end
end
