module SessionsHelper
    
    def current_user
       current_user ||= Admin.find_by(id: cookies.signed[:admin_id])
    end
    
    def is_signed?
        current_user.nil? ? false : true 
    end
end
