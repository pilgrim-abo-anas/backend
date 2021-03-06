class PilgrimsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_pilgrim, only: [:show, :edit, :update, :destroy]

  # GET /pilgrims
  # GET /pilgrims.json
  def index
    @pilgrims = Pilgrim.all
  end

  # GET /pilgrims/1
  # GET /pilgrims/1.json
  def show
  end

  # GET /pilgrims/new
  def new
    @pilgrim = Pilgrim.new
  end

  # GET /pilgrims/1/edit
  def edit
  end

  # POST /pilgrims
  # POST /pilgrims.json
  def create
    @pilgrim = Pilgrim.new(pilgrim_params)
    respond_to do |format|
      if @pilgrim.update(admin_id: current_admin.id)
        format.html { redirect_to @pilgrim, notice: 'تم أنشئ الحاج' }
        format.json { render :show, status: :created, location: @pilgrim }
      else
        format.html { render :new }
        format.json { render json: @pilgrim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pilgrims/1
  # PATCH/PUT /pilgrims/1.json
  def update
    respond_to do |format|
      if @pilgrim.update(pilgrim_params)
        format.html { redirect_to @pilgrim, notice: 'تم تحديث الحاج' }
        format.json { render :show, status: :ok, location: @pilgrim }
      else
        format.html { render :edit }
        format.json { render json: @pilgrim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pilgrims/1
  # DELETE /pilgrims/1.json
  def destroy
    @pilgrim.destroy
    respond_to do |format|
      format.html { redirect_to pilgrims_url, notice: 'تم حذف الحاج' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pilgrim
      @pilgrim = Pilgrim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pilgrim_params
      params.require(:pilgrim).permit(:name, :phone, :price, :pilgrim_type, :sheep, :blood, :status)
    end
end
