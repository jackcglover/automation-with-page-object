require 'page-object'

class GoogleSearchResults
  include PageObject


  def search_results
    browser.divs(class: 'r').collect do |div|
    div.h3.text
  end

  end
  end