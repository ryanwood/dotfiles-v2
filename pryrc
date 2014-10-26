# This fails with ArgumentError
#
# require 'rubygems'
# begin
#   require 'awesome_print'
#   Pry.config.print = proc { |output, value| output.puts value.ai }
# rescue LoadError => err
#   puts "no awesome_print :("
# end

# # Load plugins (only those I whitelist)
# Pry.config.should_load_plugins = false
# Pry.plugins["doc"].activate!
# 
# # Launch Pry with access to the entire Rails stack.
# # If you have Pry in your Gemfile, you can pass: ./script/console --irb=pry instead.
# # If you don't, you can load it through the lines below :)
# rails = File.join Dir.getwd, 'config', 'environment.rb'
# 
# if File.exist?(rails) && ENV['SKIP_RAILS'].nil?
#   require rails
# 
#   if Rails.version[0..0] == "2"
#     require 'console_app'
#     require 'console_with_helpers'
#   elsif Rails.version[0..0] == "3"
#     require 'rails/console/app'
#     require 'rails/console/helpers'
#   else
#     warn "[WARN] cannot load Rails console commands (Not on Rails2 or Rails3?)"
#   end
# end


require 'awesome_print'
AwesomePrint.pry!

# https://github.com/pry/pry/wiki/faq#wiki-hirb
# require 'hirb'
# 
# Hirb.enable
# 
# old_print = Pry.config.print
# Pry.config.print = proc do |output, value|
#   Hirb::View.view_or_page_output(value) || old_print.call(output, value)
# end
