#!/usr/bin/ruby

for i in (1..100)
	if i%3==0
		if i%5==0
			puts 'fizzbuzz'
		else
			puts 'fizz'
		end
	else
		if i%5==0
			puts 'buzz'
		else
			puts i
		end
	end
end
