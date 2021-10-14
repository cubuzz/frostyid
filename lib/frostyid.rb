# frozen_string_literal: true

require_relative "frostyid/version"

##
# Module that contains all of Frosty's code
module Frostyid
  ##
  # The generator module containing the default generator.
  module Generator
    def self.generate_id(options)
      "#{format("%0#{options[:timestamp_length]}s", (Time.now - options[:epoch]).to_i.to_s(36))}#{format("%0#{options[:random_length]}s", rand(36**options[:random_length]).to_s(36))}".gsub(' ', '0')
    end
  end
  ##
  # The ID Factory module, making generating a lot IDs easier.
  class IDFactory
    attr_reader :generator, :options
    def initialize(generator: Generator, epoch: Time.new(2020), timestamp_length: 7, random_length: 25)
      @generator = generator
      @options = {epoch: epoch,
                  timestamp_length: timestamp_length,
                  random_length: random_length}
    end

    def generate!
      Frostyid::Generator.generate_id(@options)
    end
  end
end
