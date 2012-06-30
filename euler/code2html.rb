#!/usr/local/bin/ruby

#require 'rio'
require 'rubygems'
require 'syntax/convertors/html'

if ARGV.size > 0
    code = File.read(ARGV[0])
end

convertor = Syntax::Convertors::HTML.for_syntax "ruby"
@code_html = convertor.convert(code)

puts @code_html

if ARGV.size > 0
#    fn= "#{File.basename(ARGV[0], File.extname(ARGV[0]))}.html"
#    rio(fn) << @code_html
end
