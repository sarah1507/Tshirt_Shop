class TshirtsController < ApplicationController
  before_action :set_tshirt, only: [:show, :edit, :update, :destroy]

  # GET /tshirts
  # GET /tshirts.json
  def index
    @tshirts = Tshirt.all
  end
  
  # GET /tshirts/1
  # GET /tshirts/1.json
  def show
  end

  # GET /tshirts/new
  def new
    @tshirt = Tshirt.new
  end

  # GET /tshirts/1/edit
  def edit
  end

  # POST /tshirts
  # POST /tshirts.json
  def create
    @tshirt = Tshirt.new(tshirt_params)

    respond_to do |format|
      if @tshirt.save
        format.html { redirect_to @tshirt, notice: 'Tshirt was successfully created.' }
        format.json { render :show, status: :created, location: @tshirt }
      else
        format.html { render :new }
        format.json { render json: @tshirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tshirts/1
  # PATCH/PUT /tshirts/1.json
  def update
    respond_to do |format|
      if @tshirt.update(tshirt_params)
        format.html { redirect_to @tshirt, notice: 'Tshirt was successfully updated.' }
        format.json { render :show, status: :ok, location: @tshirt }
      else
        format.html { render :edit }
        format.json { render json: @tshirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tshirts/1
  # DELETE /tshirts/1.json
  def destroy
    @tshirt.destroy
    respond_to do |format|
      format.html { redirect_to tshirts_url, notice: 'Tshirt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tshirt
      @tshirt = Tshirt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tshirt_params
      params.require(:tshirt).permit(:size, :color, :stock, :price)
    end
end
