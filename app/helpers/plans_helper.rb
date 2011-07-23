module PlansHelper

  def pp(text = '')
    text = text.to_s
    rows = text.split("\n").count
    raw text_area_tag('post', text, :size => "35x#{rows}", :wrap => 'off')
  end

  def format_date(date)
    s = ''
    if date.today?
      s += 'Today'
    elsif (date + 1.day).today?
      s += 'Yesterday'
    else
      s += date.strftime("%A")
    end
    s += " (#{date.strftime("%d/%m/%Y")}):"
    s
  end
end
