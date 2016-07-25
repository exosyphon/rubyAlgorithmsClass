def sort(array)
	quicksort(array,0,array.count-1)
end

def quicksort(a,lo,hi)
	return a if hi <= lo
	p = partition(a,lo,hi)
	quicksort(a,lo,p-1)
	quicksort(a,p+1,hi)
end

def partition(a, lo, hi)
	pivot = lo
	for index in (lo..hi) do
		if a[index] < a[hi]
			swap(a, index, pivot)
			pivot += 1
		end
	end

	swap(a, hi, pivot)

	pivot
end

def swap(a,lo,hi)
	tmp = a[lo]
	a[lo] = a[hi]
	a[hi] = tmp
end

p sort([1])
p sort([3,1])
p sort([1,4,2,1,3,1])

