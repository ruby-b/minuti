class MinutsController < ApplicationController
  before_action :set_minut, only: [:show, :edit, :update, :destroy]

  # GET /minuts
  # GET /minuts.json
  def index
    @minuts = Minut.all
  end

  # GET /minuts/1
  # GET /minuts/1.json
  def show
  end

  # GET /minuts/new
  def new
    @minut = Minut.new
    @minut.minuti_details.build
    @users = User.all
  end

  # GET /minuts/1/edit
  def edit
    @users = User.all
  end

  # POST /minuts
  # POST /minuts.json
  def create
    @minut = Minut.new(minut_params)
   # user_id = params[:id]
   # user = User.find(user_id)
   # @minut.minuti_details.build(user_id: user)

    respond_to do |format|
      if @minut.save
        format.html { redirect_to @minut, notice: 'Minut was successfully created.' }
        format.json { render :show, status: :created, location: @minut }
      else
        format.html { render :new }
        format.json { render json: @minut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minuts/1
  # PATCH/PUT /minuts/1.json
  def update
    respond_to do |format|
      if @minut.update(minut_params)
        format.html { redirect_to @minut, notice: 'Minut was successfully updated.' }
        format.json { render :show, status: :ok, location: @minut }
      else
        format.html { render :edit }
        format.json { render json: @minut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minuts/1
  # DELETE /minuts/1.json
  def destroy
    @minut.destroy
    respond_to do |format|
      format.html { redirect_to minuts_url, notice: 'Minut was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minut
      @minut = Minut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minut_params
      params.require(:minut).permit(:title, :body, authors_attributes: [:minut_id, :user_id])
    end
end
