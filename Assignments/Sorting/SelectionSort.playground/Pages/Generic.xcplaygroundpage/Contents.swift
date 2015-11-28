/*:

### 2. Make it Generic

Turn the function into a generic function so that it can sort any type of array. Only constraint is that elements of the array should conform to the `Comparable` protocol.
****
For practicing purposes you may want to rewrite the function from scratch rather than just copy-pasting.
*/
<<<<<<< HEAD
func selectionSort<T: Comparable>(var array: Array<T>) -> Array<T>  {
    guard array.count > 1 else {
        return array
    }
    
    for startIndex in array.startIndex..<array.endIndex {
        var lowestIndex = startIndex
        var lowestValue = array[startIndex]
        for sweepIndex in startIndex..<array.endIndex {
            let value = array[sweepIndex]
            if value < lowestValue {
                lowestValue = value
                lowestIndex = sweepIndex
            }
        }
        
        if startIndex != lowestIndex {
            swap(&array[startIndex], &array[lowestIndex])
        }
    }
    
=======

func selectionSort<T:Comparable>(var array: [T]) -> [T] {
    func minPosition(array: [T], start: Int) -> Int {
        var minPos = start
        for i in start..<array.count where array[i] < array[minPos] {
            minPos = i
        }
        return minPos
    }

    for i in 0..<array.count {
        let minIndex = minPosition(array, start: i)
        if i != minIndex {
            swap(&array[i], &array[minIndex])
        }
    }

>>>>>>> gmertk/master
    return array
}


<<<<<<< HEAD


assert(selectionSort(["c", "a", "b"]).isSorted())
assert(selectionSort(["a", "a", "b"]).isSorted())
assert(selectionSort(["a", "a", "a"]).isSorted())
assert(selectionSort(["b"]).isSorted())
=======
assert(selectionSort(["c", "b", "d", "a", "A"]).isSorted())
assert(selectionSort(["c", "a", "b"]).isSorted())
>>>>>>> gmertk/master

/*:
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

