class SketchbooksController < ApplicationController
  before_action :set_sketchbook, only: [:show, :edit, :update, :destroy]

  # GET /sketchbooks
  # GET /sketchbooks.json
  def index
    @sketchbooks = Sketchbook.all
  end

  # GET /sketchbooks/1
  # GET /sketchbooks/1.json
  def show
  end

  # GET /sketchbooks/new
  def new
    @sketchbook = Sketchbook.new
  end

  # GET /sketchbooks/1/edit
  def edit
  end

  # POST /sketchbooks
  # POST /sketchbooks.json
  def create
    @sketchbook = Sketchbook.new(sketchbook_params)

    respond_to do |format|
      if @sketchbook.save
        format.html { redirect_to @sketchbook, notice: 'Sketchbook was successfully created.' }
        format.json { render :show, status: :created, location: @sketchbook }
      else
        format.html { render :new }
        format.json { render json: @sketchbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sketchbooks/1
  # PATCH/PUT /sketchbooks/1.json
  def update
    respond_to do |format|
      if @sketchbook.update(sketchbook_params)
        format.html { redirect_to @sketchbook, notice: 'Sketchbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @sketchbook }
      else
        format.html { render :edit }
        format.json { render json: @sketchbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sketchbooks/1
  # DELETE /sketchbooks/1.json
  def destroy
    @sketchbook.destroy
    respond_to do |format|
      format.html { redirect_to sketchbooks_url, notice: 'Sketchbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sketchbook
      @sketchbook = Sketchbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sketchbook_params
      params.require(:sketchbook).permit(:brand, :paper_weight, :paper_type, :absorption, :artist_id)
    end
end
