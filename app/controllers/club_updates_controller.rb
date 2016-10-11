class ClubUpdatesController < ApplicationController
  before_action :set_club_update, only: [:show, :edit, :update, :destroy]

  # GET /club_updates
  # GET /club_updates.json
  def index
    @club_updates = ClubUpdate.all
  end

  # GET /club_updates/1
  # GET /club_updates/1.json
  def show
  end

  # GET /club_updates/new
  def new
    @club_update = ClubUpdate.new
  end

  # GET /club_updates/1/edit
  def edit
  end

  # POST /club_updates
  # POST /club_updates.json
  def create
    @club_update = ClubUpdate.new(club_update_params)

    respond_to do |format|
      if @club_update.save
        format.html { redirect_to @club_update, notice: 'Club update was successfully created.' }
        format.json { render :show, status: :created, location: @club_update }
      else
        format.html { render :new }
        format.json { render json: @club_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /club_updates/1
  # PATCH/PUT /club_updates/1.json
  def update
    respond_to do |format|
      if @club_update.update(club_update_params)
        format.html { redirect_to @club_update, notice: 'Club update was successfully updated.' }
        format.json { render :show, status: :ok, location: @club_update }
      else
        format.html { render :edit }
        format.json { render json: @club_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /club_updates/1
  # DELETE /club_updates/1.json
  def destroy
    @club_update.destroy
    respond_to do |format|
      format.html { redirect_to club_updates_url, notice: 'Club update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club_update
      @club_update = ClubUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_update_params
      params.require(:club_update).permit(:content, :title)
    end
end
