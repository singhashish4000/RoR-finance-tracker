class FriendshipsController < ApplicationController

    def destroy
        @frienship = current_user.friendships.where(friend_id: params[:id]).first
        @frienship.destroy
        flash[:notice] = 'Friend was successfully removed'
        redirect_to my_friends_path
    end    
end
