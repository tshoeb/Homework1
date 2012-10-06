require 'spec_helper'

describe "owners/new" do
  before(:each) do
    assign(:owner, stub_model(Owner,
      :id => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :street => "MyString",
      :city => "MyString",
      :country => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :active => false
    ).as_new_record)
  end

  it "renders new owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => owners_path, :method => "post" do
      assert_select "input#owner_id", :name => "owner[id]"
      assert_select "input#owner_first_name", :name => "owner[first_name]"
      assert_select "input#owner_last_name", :name => "owner[last_name]"
      assert_select "input#owner_street", :name => "owner[street]"
      assert_select "input#owner_city", :name => "owner[city]"
      assert_select "input#owner_country", :name => "owner[country]"
      assert_select "input#owner_phone", :name => "owner[phone]"
      assert_select "input#owner_email", :name => "owner[email]"
      assert_select "input#owner_active", :name => "owner[active]"
    end
  end
end
