require 'page-object'

class GoogleHome
  include PageObject

  page_url 'http://www.google.com'

  text_field(:search_phrase, id:'lst-ib')

  def search_for(phrase)
    self.search_phrase = phrase
    @browser.send_keys :enter
    sleep 10
  end

end