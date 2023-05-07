require 'rails_helper'

RSpec.describe "coins/show", type: :view do
  before(:each) do
    assign(:coin, Coin.create!(
      name: "Name",
      acronym: "Acronym",
      url_image: "Url Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Acronym/)
    expect(rendered).to match(/Url Image/)
  end
end
