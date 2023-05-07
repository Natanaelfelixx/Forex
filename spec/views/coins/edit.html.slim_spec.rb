require 'rails_helper'

RSpec.describe "coins/edit", type: :view do
  let(:coin) {
    Coin.create!(
      name: "MyString",
      acronym: "MyString",
      url_image: "MyString"
    )
  }

  before(:each) do
    assign(:coin, coin)
  end

  it "renders the edit coin form" do
    render

    assert_select "form[action=?][method=?]", coin_path(coin), "post" do

      assert_select "input[name=?]", "coin[name]"

      assert_select "input[name=?]", "coin[acronym]"

      assert_select "input[name=?]", "coin[url_image]"
    end
  end
end
