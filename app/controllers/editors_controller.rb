class EditorsController < ApplicationController
  before_action :authenticate_user!

  def index
    # authorize! :index, @admin
    @q = User.ransack(params[:q])
    @users = @q.result.order("id DESC").all
  end

  private
   # Use callbacks to share common setup or constraints between actions.
   def set_user
     @user = User.find(params[:id])
   end
end
