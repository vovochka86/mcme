ROMAN_NUMS = {
  "M" => 1000,
  "CM" => 900, "D" => 500, "CD" => 400, "C" => 100,
  "XC" => 90,  "L" => 50,  "XL" => 40,  "X" => 10,
  "IX" => 9,   "V" => 5,   "IV" => 4,   "I" => 1
}

def romanize(num)
  ROMAN_NUMS.map do |ltr, val| 
    amt, num = num.divmod(val)
    ltr * amt
  end.join
end

print "Input number:"
STDOUT.flush

numb = gets.to_i
	#exit if numb.nil? || numb.empty?
#numb.chomp!

romanize(numb)

