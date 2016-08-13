class EmailsController < ApplicationController
 include EmailsHelper
  
  def scan
  	article_array = emails_helper.get_article_array(current_user)
  	byebug
  	#this method should receive user's email address from registration page and scan their emails accordingly...
  	
  end
end
