class MergeSort
	def sort(array)
		if array.count <= 1
			array
		else
			mid = (array.count/2).floor
			left = sort(array[0...mid])
			right = sort(array[mid..array.count])
			merge(left, right)
		end
	end

	private

	def merge(left, right)
		if left.empty?
			right
		elsif right.empty?
			left
		elsif left.first < right.first
			[left.first]+merge(left[1..left.count], right)
		else
			[right.first]+merge(left,right[1..right.count])
		end
	end
end

p MergeSort.new.sort([4,2])
p MergeSort.new.sort([4,2,3])
p MergeSort.new.sort([1,4,2,3])
p MergeSort.new.sort([4,2,3,6,1,9])
p MergeSort.new.sort([4,2,1,1,3,7])
