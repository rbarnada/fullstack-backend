# frozen_string_literal: true

class RunsController < ProtectedController
  before_action :set_run, only: %i[show update destroy]

  # GET /runs
  def index
    # @runs = Run.all
    @runs = current_user.runs.all

    render json: @runs
  end

  # GET /runs/1
  def show
    render json: @run
  end

  # POST /runs
  def create
    @run = current_user.runs.build(run_params)
    # @run = Run.new(run_params)

    if @run.save
      render json: @run, status: :created
      # , location: @run
    else
      render json: @run.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /runs/1
  def update
    if @run.update(run_params)
      render json: @run
    else
      render json: @run.errors, status: :unprocessable_entity
    end
  end

  # DELETE /runs/1
  def destroy
    @run.destroy

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_run
    # @run = Run.find(params[:id])
    @run = current_user.runs.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def run_params
    params.require(:run).permit(:distance, :time)
  end
end
