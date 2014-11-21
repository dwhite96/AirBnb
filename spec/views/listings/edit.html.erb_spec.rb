require 'rails_helper'

RSpec.describe "listings/edit", :type => :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
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

  it "renders the edit listing form" do
    render

    assert_select "form[action=?][method=?]", listing_path(@listing), "post" do

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
