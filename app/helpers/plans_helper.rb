module PlansHelper

  def pp(text='')
    rows = text.split("\n").count
    raw text_area_tag('post', text, :size => "35x#{rows}", :wrap => 'off')
  end
end
