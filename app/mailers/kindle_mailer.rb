class KindleMailer < ApplicationMailer 
  def article_email(user, article_array)
    @user = user
    mail(to: @user.kindle_email)
  end
end
