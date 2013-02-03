require 'spec_helper'

describe "klasses/edit" do
  before(:each) do
    @klass = assign(:klass, stub_model(Klass,
      :name => "MyString",
      :description => "MyText",
      :price => 1.5,
      :credit => 1.5
    ))
  end

  it "renders the edit klass form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => klasses_path(@klass), :method => "post" do
      assert_select "input#klass_name", :name => "klass[name]"
      assert_select "textarea#klass_description", :name => "klass[description]"
      assert_select "input#klass_price", :name => "klass[price]"
      assert_select "input#klass_credit", :name => "klass[credit]"
    end
  end
end
