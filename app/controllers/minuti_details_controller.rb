class MinutiDetailsController < ApplicationController
  before_action :set_minuti_detail, only: [:show, :edit, :update, :destroy]

  # GET /minuti_details
  # GET /minuti_details.json
  def index
    @minuti_details = MinutiDetail.all
  end

  # GET /minuti_details/1
  # GET /minuti_details/1.json
  def show
  end

  # GET /minuti_details/new
  def new
    @minuti_detail = MinutiDetail.new
  end

  # GET /minuti_details/1/edit
  def edit
  end

  # POST /minuti_details
  # POST /minuti_details.json
  def create
    @minuti_detail = MinutiDetail.new(minuti_detail_params)

    respond_to do |format|
      if @minuti_detail.save
        format.html { redirect_to @minuti_detail, notice: 'Minuti detail was successfully created.' }
        format.json { render :show, status: :created, location: @minuti_detail }
      else
        format.html { render :new }
        format.json { render json: @minuti_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minuti_details/1
  # PATCH/PUT /minuti_details/1.json
  def update
    respond_to do |format|
      if @minuti_detail.update(minuti_detail_params)
        format.html { redirect_to @minuti_detail, notice: 'Minuti detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @minuti_detail }
      else
        format.html { render :edit }
        format.json { render json: @minuti_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minuti_details/1
  # DELETE /minuti_details/1.json
  def destroy
    @minuti_detail.destroy
    respond_to do |format|
      format.html { redirect_to minuti_details_url, notice: 'Minuti detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minuti_detail
      @minuti_detail = MinutiDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minuti_detail_params
      params.require(:minuti_detail).permit(:minutis_id, :minuti_details_d, :category, :body, :del)
    end
end
