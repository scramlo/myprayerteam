class StaticController < ApplicationController
  def home
  end

  def about
  end

  def answered
    @user = current_user
    @prayers = @user.prayers
    @answered = @prayers.where(:answered => TRUE).reverse
  end
end
