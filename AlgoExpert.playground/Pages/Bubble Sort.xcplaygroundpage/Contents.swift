class Program {
  func bubbleSort(array: inout [Int]) -> [Int] {
    var didSwap = false
    repeat {
        didSwap = false
        for i in 0..<(array.count-1) {
            let v1 = array[i]
            let v2 = array[i+1]
            if( v2 < v1 ){
                array[i] = v2
                array[i+1] = v1
                didSwap = true
            }
        }
    } while( didSwap == true )
    return array
  }
}

var list = [8, 5, 2, 9, 5, 6, 3]
list = Program().bubbleSort(array:&list)
