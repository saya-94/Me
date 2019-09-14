class EndUsersController < ApplicationController
    # before_action :endUserValidate , only[:new,:update,:create]
    def index
    end

    def show
        @end_user = EndUser.find(params[:id])
        @post = @end_user.posts.all
        @bkm = @end_user.bookmarks.all
    end

    def edit
    end

    def update
        @end_user = EndUser.find([:id])
        @end_user.update(end_user_params)
        redirect_to end_user_path(@end_user.id)
    end


        private
        def end_user_params
          params.require(:end_user).permit(:name,:sex,:email,:image)
        end
    
    
        def change_password_params
          params.require(:end_user).permit(:reset_password_token, :password, :password_confirmation, :curent_password)
        end
    
    
        def correct_user
            user = EndUser.find(params[:id])
          if current_end_user != user
            redirect_to end_user_path(current_end_user)
          end
        end

        # def endUserValidate
            
        # end

end
