class EndUsersController < ApplicationController
    # before_action :endUserValidate , only[:new,:update,:create]
    before_action :correct_user, only: [:edit, :update]


    def after_sign_in_path_for(resource)
      end_user_path(resource) # ログイン後にマイページへ遷移するpathを設定
    end

    def after_sign_out_path_for(resource)
      root_path # ログアウト後にPostのインデックスへ遷移するpathを設定
    end

    def index
        
    end

    def show
        @end_user = EndUser.find(params[:id])
        @post = @end_user.posts.all
        @bkm = @end_user.bookmarks.all
    end

    def setting
        @end_user = EndUser.find(params[:id])
    end

    def edit
        @end_user = EndUser.find(params[:id])
    end


    def update
        @end_user = EndUser.find(params[:id])
        # アカウント編集後、マイページに遷移。ダメだったら、編集画面にレンダー。
        if @end_user.update(end_user_params)
          redirect_to end_user_path(current_end_user.id)
        else
          render :edit
        end
    end

    def change_password
        @end_user = current_end_user
        
    end
       
    def password_update
        @end_user = current_end_user
        @end_user.update(change_password_params)
        redirect_to end_user_path(@end_user)
    end

    def change_email
      @end_user = current_end_user
    end

    def email_update
      @end_user = current_end_user
      @end_user.update(end_user_params)
      redirect_to end_user_path(@end_user)
    end



        private
        def end_user_params
          params.require(:end_user).permit(:name,:sex,:email,:profile_image,:age,:height,:introduction)
        end
    
    
        def change_password_params
          params.require(:end_user).permit(:reset_password_token, :password, :password_confirmation, :curent_password)
        end
    
    
        def correct_user
            end_user = EndUser.find(params[:id])
          if current_end_user != end_user
            redirect_to end_user_path(current_end_user)
          end
        end

end
