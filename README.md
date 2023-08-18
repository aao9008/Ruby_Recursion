# Ruby_Recursion
This is part of The Odin Project, Ruby recursion section. The first warmup is the fibonacci array using iterator and recursion. The main part is to recreate the merge sort using ruby.
## Fibonacci Array
This is a warmup practice for using recursion. The first ```fibs(n)``` is a function returning a fibonacci array using iterator. The second function ```fibs_rec(n)``` does the same thing like the ```fibs(n)``` but using recursion.

## Merge Sort
Conceptually, a merge sort works as follows:

  1. Divide the unsorted list into n sublists, each containing one element (a list of one element is considered sorted).
  2. Repeatedly merge sublists to produce new sorted sublists until there is only one sublist remaining. This will be the sorted list.

## Quick Sort
Quick sort is an in-place unstable algorithm. The average time complexity of quick sort is O(N log(N)), the same as merge sort. However, quick sort has a space complexity of O(1) whereas merge sort has a space complexity of O(N). Quick sort works as follows:

  1. Pick: Select an element.
  2. Divide: Split the problem set, move smaller parts to the left of the pivot and larger items to the right.
  3. Repeat and combine: Repeat the steps and combine the arrays that have previously been sorted.

[Wikipedia](https://en.wikipedia.org/wiki/Merge_sort) 

[CS50 Merge Sort](https://www.youtube.com/watch?v=Ns7tGNbtvV4&feature=youtu.be)

[Thai Pangsakulyanont Quick Sort](http://me.dt.in.th/page/Quicksort/)