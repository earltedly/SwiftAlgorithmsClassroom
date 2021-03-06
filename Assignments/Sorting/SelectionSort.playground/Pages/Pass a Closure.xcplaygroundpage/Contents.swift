/*:

### 3. Pass a Closure
Instead of sorting the array in ascending order, modify your function to accept a closure that takes two arguments of the same type as the array’s contents, and returns Bool. You can name this closure parameter `isOrderedBefore` (as in the `sort` function of the standard library).
****
Also check what `@noescape` means in Swift.
****
Since you now use another function to do the comparison, you can remove the `Comparable` constraint.
*/
<<<<<<< HEAD
func selectionSort<T>(var array: Array<T>, @noescape isOrderedBefore: (a: T, b: T) -> Bool) -> Array<T>  {
    guard array.count > 1 else {
        return array
    }
    
    for startIndex in array.startIndex..<array.endIndex {
        var lowestIndex = startIndex
        var lowestValue = array[startIndex]
        for sweepIndex in startIndex..<array.endIndex {
            let value = array[sweepIndex]
            if isOrderedBefore(a: value, b: lowestValue) {
                lowestValue = value
                lowestIndex = sweepIndex
            }
        }
        
        if startIndex != lowestIndex {
            swap(&array[startIndex], &array[lowestIndex])
        }
    }
    
    return array
}
    

assert(selectionSort([3, 1, 2], isOrderedBefore: <).isSorted())
=======

func selectionSort<T>(var array: [T], @noescape isOrderedBefore: (T, T) -> Bool) -> [T] {
    func minPosition(array: [T], start: Int, @noescape isOrderedBefore: (T, T) -> Bool) -> Int {
        var minPos = start
        for i in start..<array.count where isOrderedBefore(array[i], array[minPos]) {
            minPos = i
        }
        return minPos
    }

    for i in 0..<array.count {
        let minIndex = minPosition(array, start: i, isOrderedBefore: isOrderedBefore)
        if i != minIndex {
            swap(&array[i], &array[minIndex])
        }
    }
>>>>>>> gmertk/master

    return array
}


assert(selectionSort(["c", "b", "d", "a", "A"], isOrderedBefore: <).isSorted())
assert(selectionSort(["c", "a", "b"], isOrderedBefore: <).isSorted())
assert(selectionSort(["c", "a", "b"], isOrderedBefore: >).isSorted(>))
assert(selectionSort([3, 1, 2], isOrderedBefore: <).isSorted())

/*:
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

