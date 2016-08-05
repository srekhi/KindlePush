require 'google/apis/gmail_v1'
Gmail = Google::Apis::GmailV1 # Alias the module
service = Gmail::GmailService.new

serice.authorization = authorization



#user_id = user's email address https://developers.google.com/gmail/api/v1/reference/users/getProfile


#Grab the messages for this user
all_emails = service.list_user_messages()






private

def get_user_id(current_user)

end