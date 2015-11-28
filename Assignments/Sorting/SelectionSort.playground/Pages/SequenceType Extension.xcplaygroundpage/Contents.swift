/*:

### 4. SequenceType Extension

Instead of only sorting arrays, modify your function to sort any type conforming to `SequenceType`. So make your function to be an extension of `SequenceType` so that we can use it as `[1, 3, 2].selectionSort(<)` and `[1: "b", 2: "a"].selectionSort {$0.0 > $1.0}`.
*/

extension SequenceType {
<<<<<<< HEAD
    
    func selectionSort(@noescape isOrderedBefore: (a: Generator.Element, b: Generator.Element) -> Bool) -> [Generator.Element]  {
        var array = Array<Generator.Element>(self)
        
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
=======
    func selectionSort(@noescape isOrderedBefore: (Generator.Element, Generator.Element) -> Bool) -> [Generator.Element] {
        func minPosition(array: [Generator.Element], start: Int, @noescape isOrderedBefore: (Generator.Element, Generator.Element) -> Bool) -> Int {
            var minPos = start
            for i in start..<array.count where isOrderedBefore(array[i], array[minPos]) {
                minPos = i
            }
            return minPos
        }

        var array = Array(self)
        for i in 0..<array.count {
            let minIndex = minPosition(array, start: i, isOrderedBefore: isOrderedBefore)
            if i != minIndex {
                swap(&array[i], &array[minIndex])
>>>>>>> gmertk/master
            }
        }
        
        return array
    }
<<<<<<< HEAD
=======

>>>>>>> gmertk/master
}

assert([1, 3, 2].selectionSort(<).isSorted())
assert([1: "b", 2: "a"].selectionSort({$0.0 > $1.0}).isSorted({$0.0 > $1.0}))

/*:
[Table of Contents](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
*/

