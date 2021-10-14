require_relative '../lib/frostyid'

generator = Frostyid::IDFactory.new(epoch: Time.new(2021), random_length: 25)

loop do
    counter = 0
    last_tick = Time.now.to_i

    while last_tick == Time.now.to_i
        generator.generate!
        counter += 1
    end

    puts "[#{Time.now}] #{counter} generations completed."
end