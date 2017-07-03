class Palin
 def get_value()

#print "Input number:"
#STDOUT.flush
str = gets
     exit if str.nil? || str.empty?
str.chomp!

     
 if str.reverse == str
 puts "1"
 else
 puts "2"
 end
 end
end
s=Palin.new
s.get_value()