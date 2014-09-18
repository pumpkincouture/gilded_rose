require_relative '../lib/rose_kata.rb'

RSpec.configure do |config|
  config.failure_color = :red
  config.success_color = :green
  config.detail_color = :yellow
  config.tty = true
  config.color = true
  config.formatter = :documentation
end