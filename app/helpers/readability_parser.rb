module ReadabilityParser
require 'net/http'
require 'json'

def parse_article(article_url)
  #article_url
  uri = URI(article_url)
  response = Net::HTTP.get(uri)
  hash = JSON.parse(response)
  article_text = hash[:content]
  return article_text
end

end



   

