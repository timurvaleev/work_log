class Plan
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::MultiParameterAttributes
  field :date_for, :type => Date
  field :actual_log, :type => String
  field :report_log, :type => String
  field :extra_hours, :type => String

  belongs_to :user

  class << self
    def today
      plan = where(:date_for => Date.today).first
      unless plan
        plan = new(:date_for => Date.today)
      end
      plan
    end

    def yesterday
      where(:date_for.ne => Date.today).desc(:date_for).first
    end

    def last_two
      [today, yesterday]
    end

  end

end
