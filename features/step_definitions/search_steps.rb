require 'page-object'

include PageObject::PageFactory

Then /^every result title should include the word I searched for$/ do
  on_page(GoogleSearchResults) do |page|
    #expect(page.search_results.size).to be > 0
    items = page.search_results

    items.each do |title|
      expect(title.downcase).to include 'guitar'
    end
    end
end

When /^I search for a common phrase$/ do
  visit_page(GoogleHome) do |page|
    page.search_for 'guitar'

    end
  end

