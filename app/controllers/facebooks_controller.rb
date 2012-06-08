
class FacebooksController < ApplicationController
  def index
    auth = FbGraph::Auth.new("310081192414147", "4789a753e9fefc452bc39349cb990724")
    auth.from_cookie(cookies) # Put whole cookie object (a Hash) here.
    
    user = FbGraph::User.me(auth.access_token)
    user = user.fetch
    @user =  user
   end
end
