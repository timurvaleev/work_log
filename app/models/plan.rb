class Plan
  include Mongoid::Document
  include Mongoid::Timestamps
  field :date_for, :type => Date
  field :actual_log, :type => String
  field :report_log, :type => String

  belongs_to :user
end