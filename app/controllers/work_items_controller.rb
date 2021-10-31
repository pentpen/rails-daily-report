class WorkItemsController < ApplicationController
  before_action :set_work_item, only: %i[ show edit update destroy ]

  # GET /work_items or /work_items.json
  def index
    @work_items = WorkItem.all
  end

  # GET /work_items/1 or /work_items/1.json
  def show
  end

  # GET /work_items/new
  def new
    @work_item = WorkItem.new
  end

  # GET /work_items/1/edit
  def edit
  end

  # POST /work_items or /work_items.json
  def create
    @work_item = WorkItem.new(work_item_params)

    respond_to do |format|
      if @work_item.save
        format.html { redirect_to @work_item, notice: "Work item was successfully created." }
        format.json { render :show, status: :created, location: @work_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @work_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_items/1 or /work_items/1.json
  def update
    respond_to do |format|
      if @work_item.update(work_item_params)
        format.html { redirect_to @work_item, notice: "Work item was successfully updated." }
        format.json { render :show, status: :ok, location: @work_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_items/1 or /work_items/1.json
  def destroy
    @work_item.destroy
    respond_to do |format|
      format.html { redirect_to work_items_url, notice: "Work item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_item
      @work_item = WorkItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_item_params
      params.require(:work_item).permit(:name, :label)
    end
end
