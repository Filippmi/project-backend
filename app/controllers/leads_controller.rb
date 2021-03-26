class LeadsController < ApplicationController
  before_action :set_lead, only: [:show, :update, :destroy]

  # GET /leads
  def index
    @leads = Lead.all

    render json: @leads
  end

  # POST /leads
  def create
    @lead = Lead.new(lead_params)

    if @lead.save
      render json: @lead, status: :created, location: @lead
    else
      render json: @lead.errors, status: :unprocessable_entity
    end
  end

  # DELETE /leads/1
  def destroy
    @lead.destroy

    render json: @lead
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead
      @lead = Lead.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lead_params
      params.require(:lead).permit(:name)
    end
end
