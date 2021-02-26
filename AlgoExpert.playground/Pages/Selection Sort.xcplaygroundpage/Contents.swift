class Program {
    func selectionSort(array: inout [Int]) -> [Int] {
        for i in 0..<(array.count-1) {
            var removeIndex = i
            for j in (i+1)..<array.count {
                if( array[removeIndex] > array[j] ){
                    removeIndex = j
                }
            }
            if( removeIndex != i ){
                var value = array.remove(at: removeIndex)
                array.insert(value, at: i)
            }
        }
        return array
    }
}

var list = [8, 5, 2, 9, 5, 6, 3]
list = Program().selectionSort(array:&list)

