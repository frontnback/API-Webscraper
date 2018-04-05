require 'rubygems'
require 'httparty'

class Resty
  include HTTParty
  base_uri "{website here}"

  def posts
    self.class.get('/posts.json')
  end
end

resty = name.new
puts resty.posts

# //////////////////////////////////////////

job_titles =
  dom.css('a.hdrlnk').map do |element|
    element.content
  end

p job_titles

# ////////////////////////////////////////////

# name_resty.posts.each do |post|
#   p "Title: #{post['title']} | Description: #{post['description']}"
#   Post.create(title: post['title'], description: post['Description'])
#   # puts post
# end


# response = HTTParty.get("address")
# puts response.code
# puts response.message
# puts response.headers.inspect
#
# class StackExchange
#   includeHTTParty
#   base_uri "website"
#
#   def initialize(service, page)
#   @options = {query: {site: service}}
# end
