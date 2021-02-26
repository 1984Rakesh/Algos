class Program {
    func insertionSort(array: inout [Int]) -> [Int] {
        for i1 in 1..<array.count {
            var value = array[i1]
            var i2 = i1
            while i2 > 0 {
                var previousValue = array[i2 - 1]
                if( value < previousValue ){
                    array[i2 - 1] = value
                    array[i2] = previousValue
                }
                else {
                    break
                }
                i2 -= 1
            }
        }
        return array
    }
}

var items = [8, 5, 2, 9, 5, 6, 3]
let _ = Program().insertionSort(array:&items)
print(items)

