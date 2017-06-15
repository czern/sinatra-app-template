#import the gems we need to pull data from an API
require 'net/http'
require 'json'
require 'rubygems'
require 'dotenv'

# In these four lines we get the data from Google Books and save to the variable called top_tracks.
def get_book(search)
	request_string = "https://www.googleapis.com/books/v1/volumes?q=#{search.gsub(" ","+")}"
	
	sample_uri = URI(request_string) #opens a portal to the data at that link
	sample_response = Net::HTTP.get(sample_uri) #go grab the data in the portal
	sample_parsedResponse = JSON.parse(sample_response) #makes data easy to read
	sample_parsedResponse["items"]
end
	puts (get_book("sabella"))[9]["volumeInfo"]["imageLinks"]
	
# for num in 0..9
# 	<h2><%=@book[num]["volumeInfo"]["title"]%></h2>
# 	<h3><%=@book[num]["volumeInfo"]["authors"]%></h3>
# 	<img  src="<%=@book[num]["volumeInfo"]["imageLinks"]["thumbnail"]%>">
# 	<h3><%=@book[num]["searchInfo"]["textSnippet"]%></h3>
# end