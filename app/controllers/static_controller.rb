class StaticController < ApplicationController
  def user
    @profile = Profile.where(user_id: current_user.id).take
    @prayers = Prayer.where(user_id: current_user.id)
    @praises = Praise.where(user_id: current_user.id)
    @answered = Prayer.where(user_id: current_user.id).where(answered: TRUE)
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
