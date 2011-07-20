class Plan
  include Mongoid::Document
  field :date_for, :type => Date
  field :actual_log, :type => String
  field :report_log, :type => String
end
