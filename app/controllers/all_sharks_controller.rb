class AllSharksController < ApplicationController
  before_action :set_all_shark, only: [:show, :edit, :update, :destroy]

  # GET /all_sharks
  # GET /all_sharks.json
  def index
    @all_sharks = AllShark.all
  end

  # GET /all_sharks/1
  # GET /all_sharks/1.json
  def show
  end

  # GET /all_sharks/new
  def new
    @all_shark = AllShark.new
  end

  # GET /all_sharks/1/edit
  def edit
  end

  # POST /all_sharks
  # POST /all_sharks.json
  def create
    @all_shark = AllShark.new(all_shark_params)

    respond_to do |format|
      if @all_shark.save
        format.html { redirect_to @all_shark, notice: 'All shark was successfully created.' }
        format.json { render :show, status: :created, location: @all_shark }
      else
        format.html { render :new }
        format.json { render json: @all_shark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /all_sharks/1
  # PATCH/PUT /all_sharks/1.json
  def update
    respond_to do |format|
      if @all_shark.update(all_shark_params)
        format.html { redirect_to @all_shark, notice: 'All shark was successfully updated.' }
        format.json { render :show, status: :ok, location: @all_shark }
      else
        format.html { render :edit }
        format.json { render json: @all_shark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /all_sharks/1
  # DELETE /all_sharks/1.json
  def destroy
    @all_shark.destroy
    respond_to do |format|
      format.html { redirect_to all_sharks_url, notice: 'All shark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_all_shark
      @all_shark = AllShark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def all_shark_params
      params.require(:all_shark).permit(:Season, :no_in_series, :company, :Deal, :Industry, :Entrepreneur_gender, :amount, :equity, :valuation, :corcoran, :cuban, :greiner, :herjavec, :john, :oleary, :harrington, :guest, :t_sharks)
    end
end
