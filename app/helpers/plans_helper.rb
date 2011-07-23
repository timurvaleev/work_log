module PlansHelper

  def pp(text = '')
    text = text.to_s
    rows = text.split("\n").count
    raw text_area_tag('post', text, :size => "35x#{rows}", :wrap => 'off')
  end
end
