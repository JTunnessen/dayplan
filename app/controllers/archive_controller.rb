class ArchiveController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @q = Story.ransack(params[:q])
    # @stories = @q.result.order("date DESC").all
    @stories = @q.result(distinct: true)
  end

  def future
    @q = Story.ransack(params[:q])
    # @stories = @q.result.order("date DESC").all
    @stories = @q.result(distinct: true)
  end
end
