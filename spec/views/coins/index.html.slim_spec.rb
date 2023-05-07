require 'rails_helper'

RSpec.describe "coins/index", type: :view do
  before(:each) do
    assign(:coins, [
      Coin.create!(
        name: "Name",
        acronym: "Acronym",
        url_image: "Url Image"
      ),
      Coin.create!(
        name: "Name",
        acronym: "Acronym",
        url_image: "Url Image"
      )
    ])
  end

  it "renders a list of coins" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Acronym".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Url Image".to_s), count: 2
  end
end
