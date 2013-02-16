class SessionsController < Devise::SessionsController
  
  def create
    resource = warden.authenticate!(:scope => resource_name, :recall => :failure)
    return sign_in_and_redirect(resource_name, resource)
  end
  
  def sign_in_and_redirect(resource_or_scope, resource=nil)
    scope = Devise::Mapping.find_scope!(resource_or_scope)
    resource ||= resource_or_scope
    sign_in(scope, resource) unless warden.user(scope) == resource
    return render :json => {:suZccess => true, :redirect => stored_location_for(scope) || after_sign_in_path_for(resource)}
  end
 
  def failure
    return render:json => {:success => false, :errors => ["Login failed."]}
  end


  respond_to :json
  def create
 
    user = User.new(params[:user])
    if user.save
      render :json=> user.as_json(:auth_token=>user.authentication_token, :email=>user.email), :status=>201
      return
    else
      warden.custom_failure!
      render :json=> user.errors, :status=>422
    end
end