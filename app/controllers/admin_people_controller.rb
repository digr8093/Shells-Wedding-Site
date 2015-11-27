class AdminPeopleController < ApplicationController
  before_action :set_admin_person, only: [:show, :edit, :update, :destroy]

  # GET /admin_people
  # GET /admin_people.json
  def index
    @admin_people = AdminPerson.all
  end

  # GET /admin_people/1
  # GET /admin_people/1.json
  def show
  end

  # GET /admin_people/new
  def new
    @admin_person = AdminPerson.new
  end

  # GET /admin_people/1/edit
  def edit
  end

  # POST /admin_people
  # POST /admin_people.json
  def create
    @admin_person = AdminPerson.new(admin_person_params)

    respond_to do |format|
      if @admin_person.save
        format.html { redirect_to @admin_person, notice: 'Admin person was successfully created.' }
        format.json { render :show, status: :created, location: @admin_person }
      else
        format.html { render :new }
        format.json { render json: @admin_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_people/1
  # PATCH/PUT /admin_people/1.json
  def update
    respond_to do |format|
      if @admin_person.update(admin_person_params)
        format.html { redirect_to @admin_person, notice: 'Admin person was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_person }
      else
        format.html { render :edit }
        format.json { render json: @admin_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_people/1
  # DELETE /admin_people/1.json
  def destroy
    @admin_person.destroy
    respond_to do |format|
      format.html { redirect_to admin_people_url, notice: 'Admin person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_person
      @admin_person = AdminPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_person_params
      params.require(:admin_person).permit(:name, :admin, :email)
    end
end
