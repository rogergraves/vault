require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :header_image => "Header Image",
        :header_text => "Header Text",
        :title => "Title",
        :description => "MyText",
        :gallery => "",
        :map => "Map",
        :address => "Address",
        :phones => "Phones",
        :info_email => "Info Email",
        :support_email => "Support Email",
        :order_email => "Order Email",
        :prises => ""
      ),
      Location.create!(
        :header_image => "Header Image",
        :header_text => "Header Text",
        :title => "Title",
        :description => "MyText",
        :gallery => "",
        :map => "Map",
        :address => "Address",
        :phones => "Phones",
        :info_email => "Info Email",
        :support_email => "Support Email",
        :order_email => "Order Email",
        :prises => ""
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => "Header Image".to_s, :count => 2
    assert_select "tr>td", :text => "Header Text".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Map".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phones".to_s, :count => 2
    assert_select "tr>td", :text => "Info Email".to_s, :count => 2
    assert_select "tr>td", :text => "Support Email".to_s, :count => 2
    assert_select "tr>td", :text => "Order Email".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
