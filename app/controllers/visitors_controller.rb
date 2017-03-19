class VisitorsController < ApplicationController
  respond_to :json
  before_action :set_visitor, only: [:show, :update, :destroy]

  def index
    respond_to do |format|
      format.json { render json: Visitor.all }
      format.html
    end
  end

  def show

  end

  def create
    @visitor = Visitor.new(visitor_params)
    if @visitor.save
      respond_with @visitor
    else
      respond_with @visitor.errors
    end
  end

  def update
    if @visitor.update(visitor_params)
      respond_with @visitor
    else
      respond_with @visitor.errors
    end
  end

  def destroy

  end

  private

  def visitor_params
    params.require(:visitor).permit(:first_name, :last_name, :reason)
  end

  def set_visitor
    @visitor = Visitor.find(params[:id])
  end
end