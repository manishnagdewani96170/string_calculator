class StringCalculator
  attr_reader :input

  def initialize(str)
    @input = parse_input(str)
  end

  def add
    return 0 if input.size == 0
    return input.first if input.size == 1

    input.sum
  end

  private

  def parse_input(str)
    str.scan(/\d/).map(&:to_i)
  end

end
