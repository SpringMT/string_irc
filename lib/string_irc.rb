require 'string_irc/version'

class StringIrc
  IRC_COLORS = {
    white:       0,
    black:       1,
    blue:        2,
    navy:        2,
    green:       3,
    red:         4,
    brown:       5,
    maroon:      5,
    purple:      6,
    orange:      7,
    olive:       7,
    yellow:      8,
    light_green: 9,
    lime:        9,
    teal:        10,
    light_cyan:  11,
    aqua:        11,
    light_blue:  12,
    royal:       12,
    pink:        13,
    fuchsia:     13,
    grey:        14,
    light_grey:  15,
    silver:      15
  }

  IRC_STYLES = {
    bold:      "\x02",
    underline: "\x1f",
    italics:   "\x16"
  }

  IRC_COLORS.each do |c, v|
    define_method c do |background=nil|
      coloring = "\x03#{v}"
      if (! background.nil?) && (IRC_COLORS.key? background)
        coloring << ",#{IRC_COLORS[background]}"
      end
      @result = "#{coloring}#{@result}"
      self
    end
  end

  IRC_STYLES.each do |s, v|
    define_method s do
      @result = "#{v}#{@result}"
      self
    end
  end

  def initialize(msg)
    @result = ""
    if msg.respond_to?(:to_str)
      @result = msg.to_str
    elsif respond_to?(:to_str)
      @result = to_str
    end
  end

  def result
    @result << "\x03"
  end

end


