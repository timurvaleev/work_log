module PlansHelper

  def pp(text = '')
    text = text.to_s
    rows = text.split("\n").count
    raw text_area_tag('post', text, :size => "35x#{rows}", :wrap => 'off')
  end

  def format_date(date)
    "#{week_day(date)} (#{date.strftime("%d/%m/%Y")}):"
  end

  def week_day(date)
    if date.today?
      'Today'
    elsif (date + 1.day).today?
      'Yesterday'
    else
      date.strftime("%A")
    end
  end
end
