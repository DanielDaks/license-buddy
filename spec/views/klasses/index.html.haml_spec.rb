require 'spec_helper'

describe "klasses/index" do
  before(:each) do
    assign(:klasses, [
      stub_model(Klass,
        :name => "Name",
        :description => "MyText",
        :price => 1.5,
        :credit => 1.5
      ),
      stub_model(Klass,
        :name => "Name",
        :description => "MyText",
        :price => 1.5,
        :credit => 1.5
      )
    ])
  end

  it "renders a list of klasses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
