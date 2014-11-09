require 'rails_helper'

RSpec.describe "listings/new", :type => :view do
  before(:each) do
    assign(:listing, Listing.new(
      :user => nil,
      :title => "MyString",
      :description => "MyText",
      :neighborhood => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :price => "9.99"
    ))
  end

  it "renders new listing form" do
    render

    assert_select "form[action=?][method=?]", listings_path, "post" do

      assert_select "input#listing_user_id[name=?]", "listing[user_id]"

      assert_select "input#listing_title[name=?]", "listing[title]"

      assert_select "textarea#listing_description[name=?]", "listing[description]"

      assert_select "input#listing_neighborhood[name=?]", "listing[neighborhood]"

      assert_select "input#listing_address[name=?]", "listing[address]"

      assert_select "input#listing_city[name=?]", "listing[city]"

      assert_select "input#listing_state[name=?]", "listing[state]"

      assert_select "input#listing_country[name=?]", "listing[country]"

      assert_select "input#listing_price[name=?]", "listing[price]"
    end
  end
end
