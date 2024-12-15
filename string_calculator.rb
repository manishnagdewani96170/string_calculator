class StringCalculator
  attr_reader :input

  def initialize(str)
    @input = parse_input(str)
  end

  def add
    return 0 if input.size == 0
    return input.first if input.size == 1

    negative_nos = input.select(&:negative?)

    if negative_nos.size > 0
      raise StandardError.new "Negative numbers not allowed #{negative_nos.join(',')}"
    end
      
    input.reject { |num| num > 1000 }.sum
  end

  private

  def parse_input(str)
    str.scan(/-?\d{1,4}+/).map(&:to_i)
  end

end
