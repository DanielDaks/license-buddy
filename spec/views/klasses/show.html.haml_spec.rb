require 'spec_helper'

describe "klasses/show" do
  before(:each) do
    @klass = assign(:klass, stub_model(Klass,
      :name => "Name",
      :description => "MyText",
      :price => 1.5,
      :credit => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
