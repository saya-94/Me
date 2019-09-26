class AdminsController < ApplicationController

  def index
    @q = EndUser.ransack(params[:q])
    if params[:q].blank?
      @end_users = @q.result(distinct: true).with_deleted
    elsif params[:q][:deleted_at] == "削除済"
      @end_users = @q.result(distinct: true).only_deleted
    elsif params[:q][:deleted_at] == "アクティブ"
      @end_users = @q.result(distinct: true)
    else
      @end_users = @q.result(distinct: true).with_deleted
    end

  end

  def show
      @end_user = EndUser.with_deleted.find(params[:id])
  end

  def edit
      
  end

  def update
      
  end

	def delete
		@end_user = EndUser.find(params[:id])
		@end_user.destroy
		redirect_to admins_path
	end

  def search
      
  end


end
