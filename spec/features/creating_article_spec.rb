require "rails_helper"

RSpec.feature "Creating Articles" do
  # A user wants to create a new article
  scenario "A user creates a new article" do
    # User visits root director
    visit "/"
    # user will click the new article link
    click_link "New article"
    # user will fill in the title and body and click button
    fill_in "Title", with: "Creating first article"
    fill_in "Body", with: "lorem Ipsum"
    click_button "Create article"
    
    # user gets confirmation that article has been created
    expect(page).to have_content("Article has been created")
    # user is taken to articles path, index page
    expect(page.current_path).to eq(articles_path)
    # run rspec on feature - rspec spec/features/creating_article_spec.rb
  end
end