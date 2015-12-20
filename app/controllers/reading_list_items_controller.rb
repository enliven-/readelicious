class ReadingListItemsController < ApplicationController
  before_action :set_reading_list_item, only: [:show, :edit, :update, :destroy]

  # GET /reading_list_items
  # GET /reading_list_items.json
  def index
    @reading_list_items = ReadingListItem.all
  end

  # GET /reading_list_items/1
  # GET /reading_list_items/1.json
  def show
  end

  # GET /reading_list_items/new
  def new
    @reading_list_item = ReadingListItem.new
  end

  # GET /reading_list_items/1/edit
  def edit
  end

  # POST /reading_list_items
  # POST /reading_list_items.json
  def create
    @reading_list_item = ReadingListItem.new(reading_list_item_params)

    respond_to do |format|
      if @reading_list_item.save
        format.html { redirect_to @reading_list_item, notice: 'Reading list item was successfully created.' }
        format.json { render :show, status: :created, location: @reading_list_item }
      else
        format.html { render :new }
        format.json { render json: @reading_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reading_list_items/1
  # PATCH/PUT /reading_list_items/1.json
  def update
    respond_to do |format|
      if @reading_list_item.update(reading_list_item_params)
        format.html { redirect_to @reading_list_item, notice: 'Reading list item was successfully updated.' }
        format.json { render :show, status: :ok, location: @reading_list_item }
      else
        format.html { render :edit }
        format.json { render json: @reading_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reading_list_items/1
  # DELETE /reading_list_items/1.json
  def destroy
    @reading_list_item.destroy
    respond_to do |format|
      format.html { redirect_to reading_list_items_url, notice: 'Reading list item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading_list_item
      @reading_list_item = ReadingListItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reading_list_item_params
      params.require(:reading_list_item).permit(:book_id, :reading_list_id, :status)
    end
end
