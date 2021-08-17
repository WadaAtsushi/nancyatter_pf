module SessionsHelper

    def set_current_user
        if session[:user_id]
          @current_user = User.find_by(id: session[:user_id])
        end
      end
  
      def set_current_app
        if session[:nancyatterapp_id]
          @current_app = Nancyatterapp.find_by(id: session[:nancyatterapp_id])
        end
      end
  
      def set_current_menbur
        if session[:menbur_id]
          @current_menbur = Menbur.find_by(id: session[:menbur_id])
        end
      end
  
end
