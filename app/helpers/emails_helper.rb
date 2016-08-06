require 'google/apis/gmail_v1'
Gmail = Google::Apis::GmailV1 
service = Gmail::GmailService.new
service.authorization = authorization 
#when going to Gmail API methods, click on Service class to get the associated methods.
#user_id = user's email address https://developers.google.com/gmail/api/v1/reference/users/getProfile


date =  Time.now.strftime("%Y/%m/%d")  # THIS IS HOW YOU GET TODAY DATE IN YY/MM/DD


user_emails = service.list_user_messages(current_user.email, q:"#{date}") #Q param == search parameter
for u in users_email
  temp_email = service.get_user_message(current_user.email, u.id) 
  #add this temp value to an array
end

#cycle through array and use regex to grab the body, scan body and regex for article then save all pulled articles in backend.
  

