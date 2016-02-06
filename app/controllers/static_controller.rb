class StaticController < ApplicationController
  def user
    @profile = Profile.where(user_id: current_user.id).take
  end

  def about
  end

  def answered
    @user = current_user
    @prayers = @user.prayers
    @answered = @prayers.where(:answered => TRUE).reverse
  end

  def team
    @user = current_user
    @warriors = @user.all_following
  end
end
