class CalTaxesController < ApplicationController
  before_action :set_cal_tax, only: [:show, :edit, :update, :destroy]

  # GET /cal_taxes
  # GET /cal_taxes.json
  def index
    @cal_taxes = CalTax.all
  end

  # GET /cal_taxes/1
  # GET /cal_taxes/1.json
  def show
  end

  def calc
  end
  

  # GET /cal_taxes/new
  def new
    @cal_tax = CalTax.new
  end

  # GET /cal_taxes/1/edit
  def edit
  end

  # POST /cal_taxes
  # POST /cal_taxes.json
  def create
    @cal_tax = CalTax.new(cal_tax_params)

    respond_to do |format|
      if @cal_tax.save
        format.html { redirect_to @cal_tax, notice: 'Cal tax was successfully created.' }
        format.json { render :show, status: :created, location: @cal_tax }
      else
        format.html { render :new }
        format.json { render json: @cal_tax.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cal_taxes/1
  # PATCH/PUT /cal_taxes/1.json
  def update
    respond_to do |format|
      if @cal_tax.update(cal_tax_params)
        format.html { redirect_to @cal_tax, notice: 'Cal tax was successfully updated.' }
        format.json { render :show, status: :ok, location: @cal_tax }
      else
        format.html { render :edit }
        format.json { render json: @cal_tax.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cal_taxes/1
  # DELETE /cal_taxes/1.json
  def destroy
    @cal_tax.destroy
    respond_to do |format|
      format.html { redirect_to cal_taxes_url, notice: 'Cal tax was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cal_tax
      @cal_tax = CalTax.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cal_tax_params
      params.require(:cal_tax).permit(:withtax, :withouttax)
    end
end
