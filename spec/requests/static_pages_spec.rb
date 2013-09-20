# encoding: utf-8

require 'spec_helper'

describe "StaticPages" do

  #describe "GET /static_pages" do
  #  it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #   get static_pages_index_path
  #    response.status.should be(200)
  #  end
  #end
  
  describe "Home page" do
	before { visit root_path } #'/static_pages/home'
	subject { page }
	it( "Home page содержит 'Sample App'" ){ page.should have_selector('h1', text: 'Sample App') }
	it( "отсутствует конкретный title" ){ should_not have_selector('title', text: "| Home") }
	it( "should have the base title" ){ should have_selector('title', text: full_title('')) }
  end
  
  describe "Help page" do
	before { visit help_path } #'/static_pages/help'
	subject { page }
	it( "Help page содержит 'Help'" ){ should have_selector('h1', text: 'Help') }
	it( "соответствующий title" ){ should have_selector('title', text: full_title("Help")) }
  end
  
  describe "About page" do
	before { visit about_path } #'/static_pages/about'
	subject { page }
	it( "About page содержит 'About Us'" ){ should have_selector('h1', text: 'About Us') }
	it( "соответствующий title" ){ should have_selector('title', text: full_title("About Us")) }
  end
  
  describe "Contact page" do
	before { visit contact_path } #'/static_pages/contact'
	subject { page }
	it( "Contact page содержит 'Contact'" ){ should have_selector('h1', text: 'Contact') }
	it( "соответствующий title" ){ should have_selector('title', text: full_title("Contact")) }
  end
  
end
