class Users::SessionsController < Devise::SessionsController
    def after_sign_in_path_for(resource)
    	if resource.admin?
    		rails_admin.dashboard_path
    	else		
        	root_url
        end 	
    end

end