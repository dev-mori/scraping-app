class TopController < ApplicationController
  def home

    agent = Mechanize.new
  
    page = agent.get("https://feedly.com/i/discover/sources/search/topic/tech")
  
    @elements = page.search('title')
  
  end
end
