class MergeSort
	def sort(array)
		secondary = array.dup
		lo = 0
		hi = array.count-1
		sorted(array,secondary,lo, hi)
	end

	private

	def merge(a, secondary, lo, mid, hi)
		(lo..hi).each do |x|
			secondary[x] = a[x]
		end

		i = lo 
		j = mid+1
		(lo..hi).each do |x|
			if i > mid 
				a[x] = secondary[j]
				j+=1
			elsif (j > hi)
				a[x] = secondary[i]
				i+=1
			elsif (secondary[j] < secondary[i])
				a[x] = secondary[j]
				j+=1
			else
				a[x] = secondary[i]
				i+=1
			end
		end
		a
	end

	def sorted(a, secondary, lo, hi)
		return secondary if hi <= lo

		mid = (lo + hi)/2
		sorted(a, secondary, lo, mid)
		sorted(a, secondary, mid+1,hi)
		merge(a,secondary,lo, mid, hi) 
	end
end

p MergeSort.new.sort([])
p MergeSort.new.sort(['a'])
p MergeSort.new.sort([2,1])
p MergeSort.new.sort(['c','b','a'])
p MergeSort.new.sort(['a','a','b','c','c','b']).sort
p MergeSort.new.sort(['a','z','y','z','q','u','t']).sort
p MergeSort.new.sort([2,4,6,2,3,1,5,5,1,1,3,9]).sort
