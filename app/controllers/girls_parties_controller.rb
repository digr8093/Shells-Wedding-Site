class GirlsPartiesController < ApplicationController
  before_action :set_girls_party, only: [:show, :edit, :update, :destroy]

  # GET /girls_parties
  # GET /girls_parties.json
  def index
    @girls_parties = GirlsParty.all
  end

  # GET /girls_parties/1
  # GET /girls_parties/1.json
  def show
  end

  # GET /girls_parties/new
  def new
    @girls_party = GirlsParty.new
  end

  # GET /girls_parties/1/edit
  def edit
  end

  # POST /girls_parties
  # POST /girls_parties.json
  def create
    @girls_party = GirlsParty.new(girls_party_params)

    respond_to do |format|
      if @girls_party.save
        format.html { redirect_to @girls_party, notice: 'Girls party was successfully created.' }
        format.json { render :show, status: :created, location: @girls_party }
      else
        format.html { render :new }
        format.json { render json: @girls_party.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /girls_parties/1
  # PATCH/PUT /girls_parties/1.json
  def update
    respond_to do |format|
      if @girls_party.update(girls_party_params)
        format.html { redirect_to @girls_party, notice: 'Girls party was successfully updated.' }
        format.json { render :show, status: :ok, location: @girls_party }
      else
        format.html { render :edit }
        format.json { render json: @girls_party.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /girls_parties/1
  # DELETE /girls_parties/1.json
  def destroy
    @girls_party.destroy
    respond_to do |format|
      format.html { redirect_to girls_parties_url, notice: 'Girls party was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_girls_party
      @girls_party = GirlsParty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def girls_party_params
      params.require(:girls_party).permit(:rsvp, :venue, :date)
    end
end
