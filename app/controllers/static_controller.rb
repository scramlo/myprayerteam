class StaticController < ApplicationController
  def home
    @profile_img = current_user.profile.profile_img
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
