#!/usr/bin/ruby

#generating permutations - odd ones are indented

def perm(klocki, poczatek)
	if klocki.empty?
		znak=1
		for i in poczatek[1..-1]
			for j in poczatek[0..poczatek.index(i)-1]
				if j>i
					znak*=(-1)
				end
			end
		end
		if znak>0
			puts poczatek*","
		else
			puts "\t"*2+poczatek*","
		end
	else
		for i in klocki
			knowe=Array.new(klocki)
			knowe.delete(i)
			pnowy=Array.new(poczatek)
			pnowy << i
			perm(knowe, pnowy)
		end
	end
end

def permutacje(n)
	perm((1..n).to_a, [])
end


permutacje(4)
