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

  def list
    # Story list for a list view of the index
    @q = Story.ransack(params[:q])
    @stories = @q.result(distinct: true)
  end
end
