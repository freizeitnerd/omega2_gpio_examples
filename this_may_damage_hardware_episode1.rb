require "omega2_gpio"

Omega2Gpio.configuration.messaging_level = 2
Omega2Gpio.configuration.mock = false

gpio_numbers = [0,2,3,11,18,45,46]
gpios = []

gpio_numbers.each do |gpio_number|
  gpios.push(Omega2Gpio::Output.new(gpio_number).high)
end

gpios.each do |gpio|
  gpio.low
  sleep(0.3)
  gpio.high
end
