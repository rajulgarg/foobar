require "foobar/version"

class Foobar
  def initialize(num1, num2)
    @start_num = num1
    @end_num = num2
  end

  def execute
    divisibility_test
  end

  private

  def divisibility_test
    return 'Invalid Input' unless @start_num.is_a?(Integer) && @end_num.is_a?(Integer)
    result = []
    (@start_num..@end_num).each do |num|
      result << "#{num}: foobar" && next if (result1 = num % 3 == 0) & (result2 = num % 5 == 0)
      result << "#{num}: foo" if result1
      result << "#{num}: bar" if result2
    end
    result
  end
end