require 'spec_helper'

describe "klasses/new" do
  before(:each) do
    assign(:klass, stub_model(Klass,
      :name => "MyString",
      :description => "MyText",
      :price => 1.5,
      :credit => 1.5
    ).as_new_record)
  end

  it "renders new klass form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => klasses_path, :method => "post" do
      assert_select "input#klass_name", :name => "klass[name]"
      assert_select "textarea#klass_description", :name => "klass[description]"
      assert_select "input#klass_price", :name => "klass[price]"
      assert_select "input#klass_credit", :name => "klass[credit]"
    end
  end
end
