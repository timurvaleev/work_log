require 'spec_helper'

describe "plans/show.html.erb" do
  before(:each) do
    @plan = assign(:plan, stub_model(Plan,
      :actual_log => "MyText",
      :report_log => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
