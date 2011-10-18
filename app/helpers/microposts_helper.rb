module MicropostsHelper

  def wrap(content)
    raw(content.split.map{ |s| wrap_long_string(s) }.join(' '))
  end

  private

    def wrap_long_string(text, max_width = 30)
      zero_width_space = "&#8203;"    # html break line (google zero width space)
      regex = /.{1,#{max_width}}/     # any character (.) from 1 to 30 will match
      (text.length < max_width) ? text : 
                                 text.scan(regex).join(zero_width_space)
    end
end
