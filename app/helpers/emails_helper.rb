require 'google/apis/gmail_v1'
require 'base64'
Gmail = Google::Apis::GmailV1 
service = Gmail::GmailService.new
service.authorization = authorization 
#when going to Gmail API methods, click on Service class to get the associated methods.
#user_id = user's email address https://developers.google.com/gmail/api/v1/reference/users/getProfile
body_text = ""

date =  Time.now.strftime("%Y/%m/%d")  # THIS IS HOW YOU GET TODAY DATE IN YY/MM/DD


user_email_ids = service.list_user_messages(current_user.email, q:"#{date}") #Q param == search parameter. 
#list_user_messages returns id and threadid of each email
for id in user_email_ids
  email_json= service.get_user_message(current_user.email, u.id) #returns the actual email JSON output


  for i in email_json[payload][i]
    if i == body
      body_text += email_json[payload][i]  #for now, concatenate each of the body tag output and then regex
    end
  end


def get_atlantic(text_of_body)

  ## http://www.theatlantic.com/entertainment/archive/2016/08/date-night-with-the-zombies/494540/
  ## http://www.theatlantic.com/international/archive/2016/08/state-of-emergency/494501/

  # <a href="www.theatlantic/nytimes" .  </a>
  end

def get_nytimes (text_of_body)
end

def get_mittechreview(text_of_body)
end
def get_articles(text_of_body)
  #'<a href = “(http|https)://www.(theatlantic|nytimes|technologyreview|nbcnews|huffingtonpost|cnn|foxnews|dailymail|washingtonpost|theguardian|wsj|abcnews|bbc|usatoday|latimes|bloomberg).*</a>'
  #pop off the a tags
  #save article in an array
  end


def push_articles(text_of_body)
  decode_body_text = Base64.urlsafe_decode64(text_of_body)
  array_of_articles = decode_body_text.scan(/<a href = .http://www.(theatlantic|nytimes|technologyreview|nbcnews|huffingtonpost|cnn|foxnews|dailymail|washingtonpost|theguardian|wsj|abcnews|bbc|usatoday|latimes|bloomberg).*</a>/)
  for article in array_of_articles
    #push to user's kindle email address
    
  end


  #<a href="http://www.theatlantic.com/entertainment/archive/2016/08/watching-the-2016-rio-olympics/494522/">http://www.theatlantic.com/entertainment/archive/2016/08/watching-the-2016-rio-olympics/494522/</a> 
  #LOOK FOR THE HREF AND GRAB THE LINK ACCORDINGLY!!!



end




   

