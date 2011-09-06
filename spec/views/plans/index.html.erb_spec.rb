require 'spec_helper'

describe "plans/index.html.erb" do
  before(:each) do
    assign(:plans, [
      stub_model(Plan,
        :actual_log => "MyText",
        :report_log => "MyText"
      ),
      stub_model(Plan,
        :actual_log => "MyText",
        :report_log => "MyText"
      )
    ])
  end

  it "renders a list of plans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
