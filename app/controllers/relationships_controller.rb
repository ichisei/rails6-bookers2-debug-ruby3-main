class RelationshipsController < ApplicationController
  
  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer  
  end

  # フォロー一覧
  def followings 
    user = User.find(params[:user_id])
    @users = user.followings
  end
  
  # フォロワー一覧
  def followers
    user = User.find(params[:user_id])
    @users = user.followers
  end

end
  
  
  
# def create
#     user = User.find(params[:user_id])
#     relationships = Relationship.new(followed_id: user_id)
#     relationships.followerd_id = current_user.id
#     relationships.save
#     redirect_to request.referer
#   end

#   def destroy
#     user = User.find(params[:id])
#     relationship = favorites.find_by(followed_id: current_user_id)
#     relationship.destroy
#     redirect_to request.referer
#   end  
  
  
  
  
  
