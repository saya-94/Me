class AdminsController < ApplicationController

  def index
      @end_user = EndUser.all
      @q = EndUser.ransack(params[:q])
      @end_users = @q.result(distinct: true)
  end

  def show
      
  end

  def edit
      
  end

  def update
      
  end

  def delete
      
  end

  def search
    # @q = EndUser.search(search_params)
    # @end_user = @q.result(distinct: true)
  end




  private
  def search_params
    # params.require(:q).permit!
  end

end
