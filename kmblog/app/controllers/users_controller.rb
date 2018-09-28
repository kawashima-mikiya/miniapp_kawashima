class UsersController < ApplicationController
  def show
  	@id = current_user.id
    @blogs =current_user.blogs.order("created_at DESC")
  end
end
