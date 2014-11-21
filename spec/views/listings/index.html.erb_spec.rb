require 'rails_helper'

RSpec.describe "listings/index", :type => :view do
  before(:each) do
    assign(:listings, [
      Listing.create!(
        :user => nil,
        :title => "Title",
        :description => "MyText",
        :neighborhood => "Neighborhood",
        :address => "Address",
        :city => "City",
        :state => "State",
        :country => "Country",
        :price => "9.99"
      ),
      Listing.create!(
        :user => nil,
        :title => "Title",
        :description => "MyText",
        :neighborhood => "Neighborhood",
        :address => "Address",
        :city => "City",
        :state => "State",
        :country => "Country",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of listings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Neighborhood".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
