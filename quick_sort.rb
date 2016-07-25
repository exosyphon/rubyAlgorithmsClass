def sort(array)
	quicksort(array,0,array.count-1)
end

def quicksort(a,lo,hi)
	return a if hi <= lo
	p = partition(a,lo,hi)
	quicksort(a,lo,p-1)
	quicksort(a,p+1,hi)
end

def partition(a,lo,hi)
	i=lo
	j=hi+1
	while true do
		i+=1
		while a[i] < a[lo] do
			break if i == hi
			i+=1
		end 

		j-=1
		while a[lo] < a[j] do
			break if j == lo 
			j-=1
		end

		break if i >= j
		exch(a,i,j)
	end

	exch(a,lo,j)
	j
end

def exch(a,lo,hi)
	tmp = a[lo]
	a[lo] = a[hi]
	a[hi] = tmp
end

p sort([1])
p sort([3,1])
p sort([1,4,2,1,3,1])

