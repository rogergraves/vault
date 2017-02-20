require 'rails_helper'

RSpec.describe HomeController, type: :controller do


  it "renders the show template" do
    get :show
    expect(response).to render_template("show")
  end

end
