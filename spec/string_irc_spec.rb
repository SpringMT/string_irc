#!/usr/bin/env ruby
# encoding: UTF-8

require File.join(File.dirname(__FILE__), 'spec_helper')

colors = {
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

styles = {
  bold:      "\x02",
  underline: "\x1f",
  italics:   "\x16"
}

describe StringIrc do
  shared_examples_for :colored_string do |msg, color|
    subject { StringIrc.new(msg).send(color).result }
    it { should eql("\x03#{colors[color]}#{msg}\x03") }
  end
  shared_examples_for :styled_string do |msg, style|
    subject { StringIrc.new(msg).send(style).result }
    it { should eql("#{styles[style]}#{msg}\x03") }
  end

  msg = 'hello world!'
  context :single_color do
    StringIrc::IRC_COLORS.keys.each do |c|
      it_behaves_like :colored_string, msg, c
    end
  end
  context :single_style do
    StringIrc::IRC_STYLES.keys.each do |s|
      it_behaves_like :styled_string, msg, s
    end
  end

  context :background_colors do
    subject { StringIrc.new(msg).red(:white).result }
    it {  should eql("\x034,0#{msg}\x03") }
  end

  context :style_color do
    subject { StringIrc.new(msg).red(:white).bold.result }
    it {  should eql("\x02\x034,0#{msg}\x03") }
  end

  context :color_style do
    subject { StringIrc.new(msg).bold.red(:white).result }
    it {  should eql("\x034,0\x02#{msg}\x03") }
  end

end


