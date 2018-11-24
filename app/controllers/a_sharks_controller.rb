class ASharksController < ApplicationController
  before_action :set_a_shark, only: [:show, :edit, :update, :destroy]

  # GET /a_sharks
  # GET /a_sharks.json
  def index
    @a_sharks = AShark.all
  end

  # GET /a_sharks/1
  # GET /a_sharks/1.json
  def show
  end

  # GET /a_sharks/new
  def new
    @a_shark = AShark.new
  end

  # GET /a_sharks/1/edit
  def edit
  end

  # POST /a_sharks
  # POST /a_sharks.json
  def create
    @a_shark = AShark.new(a_shark_params)

    respond_to do |format|
      if @a_shark.save
        format.html { redirect_to @a_shark, notice: 'A shark was successfully created.' }
        format.json { render :show, status: :created, location: @a_shark }
      else
        format.html { render :new }
        format.json { render json: @a_shark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a_sharks/1
  # PATCH/PUT /a_sharks/1.json
  def update
    respond_to do |format|
      if @a_shark.update(a_shark_params)
        format.html { redirect_to @a_shark, notice: 'A shark was successfully updated.' }
        format.json { render :show, status: :ok, location: @a_shark }
      else
        format.html { render :edit }
        format.json { render json: @a_shark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_sharks/1
  # DELETE /a_sharks/1.json
  def destroy
    @a_shark.destroy
    respond_to do |format|
      format.html { redirect_to a_sharks_url, notice: 'A shark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_shark
      @a_shark = AShark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_shark_params
      params.require(:a_shark).permit(:Season, :no_in_series, :company, :Deal, :Industry, :Entrepreneur_gender, :amount, :equity, :valuation, :corcoran, :cuban, :greiner, :herjavec, :john, :oleary, :harrington, :guest, :t_sharks)
    end
end
