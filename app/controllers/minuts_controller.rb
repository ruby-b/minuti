class MinutsController < ApplicationController
  before_action :set_minut, only: [:show, :edit, :update, :destroy]

  # GET /minuts
  # GET /minuts.json
  def index
    @minuts  = Minut.joins(:users).where("users.id = ?", current_user)
  end

  # GET /minuts/1
  # GET /minuts/1.json
  def show
  end

  # GET /minuts/new
  def new
    @minut = Minut.new
    @users = User.where.not("id = ?", current_user)
  end

  # GET /minuts/1/edit
  def edit
    @users = User.where.not("id = ?", current_user)
  end

  # POST /minuts
  # POST /minuts.json
  def create
    @minut = Minut.new(minut_params)
    @minut = Minut.new(minut_params)
    user_id = params[:minut][:id]
    if user_id
      user = User.find(user_id) # 権限情報追加（本人）
      @minut.users << user
    end 
    user = User.find(current_user) # 権限情報追加（選択分）
    @minut.users << user
    @users = User.where.not("id = ?", current_user)
    
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
    @minut = Minut.new(minut_params)
    minutdel = Minut.find(params[:id])
    minutdel.delete
    user_id = params[:minut][:id]
    if user_id
      user = User.find(user_id) # 権限情報追加（選択分）
      @minut.users << user
    end
    user = User.find(current_user) # 権限情報追加（本人分）
    @minut.users << user
    @users = User.where.not("id = ?", current_user)
    respond_to do |format|
      if @minut.save
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
