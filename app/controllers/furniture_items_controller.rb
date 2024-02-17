class FurnitureItemsController < ApplicationController
  before_action :set_furniture_item, only: %i[ show edit update destroy ]

  # GET '/furniture_items', to: 'furniture_items#index'
  def index
    @furniture_items = FurnitureItem.all
  end

  # GET '/furniture_items/:id', to 'furniture_items#show'
  def show
  end

  # GET '/furniture_items/new', to: 'furniture_items#new'
  def new
    @furniture_item = FurnitureItem.new
  end

  # GET '/furniture_items/:id/edit', to: 'furniture_items#edit'
  def edit
  end

  # POST '/furniture_items', to: 'furniture_items#create'
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

  # PATCH/PUT '/furniture_items/:id', to 'furniture_items#update'
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

  # DELETE '/furniture_items/:id', to: 'furniture_items#destroy'
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
      params.require(:furniture_item).permit(:name, :material, :image_url)
    end
end
