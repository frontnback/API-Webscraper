require 'sinatra'

require 'HTTParty'
require 'nokogiri'

get '/' do
  p jobs
  ary=[]
  jobs.each do |job|
ary.push("<h1>#{job}</h1>")
  end
  p ary.join()
end

def jobs

    url = "https://miami.craigslist.org/search/sof"
    response = HTTParty.get url
  dom = Nokogiri::HTML(response.body)
  job_titles = dom.css('a.hdrlnk').map(&:content)
  job_titles
end
