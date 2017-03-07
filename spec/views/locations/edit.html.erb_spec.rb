require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :header_image => "MyString",
      :header_text => "MyString",
      :title => "MyString",
      :description => "MyText",
      :gallery => "",
      :map => "MyString",
      :address => "MyString",
      :phones => "MyString",
      :info_email => "MyString",
      :support_email => "MyString",
      :order_email => "MyString",
      :prises => ""
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input#location_header_image[name=?]", "location[header_image]"

      assert_select "input#location_header_text[name=?]", "location[header_text]"

      assert_select "input#location_title[name=?]", "location[title]"

      assert_select "textarea#location_description[name=?]", "location[description]"

      assert_select "input#location_gallery[name=?]", "location[gallery]"

      assert_select "input#location_map[name=?]", "location[map]"

      assert_select "input#location_address[name=?]", "location[address]"

      assert_select "input#location_phones[name=?]", "location[phones]"

      assert_select "input#location_info_email[name=?]", "location[info_email]"

      assert_select "input#location_support_email[name=?]", "location[support_email]"

      assert_select "input#location_order_email[name=?]", "location[order_email]"

      assert_select "input#location_prises[name=?]", "location[prises]"
    end
  end
end
