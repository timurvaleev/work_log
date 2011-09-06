require 'spec_helper'

describe "plans/new.html.erb" do
  before(:each) do
    assign(:plan, stub_model(Plan,
      :actual_log => "MyText",
      :report_log => "MyText"
    ).as_new_record)
  end

  it "renders new plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plans_path, :method => "post" do
      assert_select "textarea#plan_actual_log", :name => "plan[actual_log]"
      assert_select "textarea#plan_report_log", :name => "plan[report_log]"
    end
  end
end
