require 'rails_helper'

RSpec.describe "locations/show", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Header Image/)
    expect(rendered).to match(/Header Text/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Map/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Phones/)
    expect(rendered).to match(/Info Email/)
    expect(rendered).to match(/Support Email/)
    expect(rendered).to match(/Order Email/)
    expect(rendered).to match(//)
  end
end
