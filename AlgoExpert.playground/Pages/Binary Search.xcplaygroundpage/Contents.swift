class Program {
    func binarySearch(array: [Int], target: Int) -> Int {
        var index = -1
        var searchArray = array
        var startIndexWRTParent = 0
        repeat {
            let midIndex = searchArray.count / 2
            let value = searchArray[midIndex]
            if( value == target ){
                index = startIndexWRTParent + midIndex
                break
            }
            else if( searchArray.count > 1 ) {
                if( target > value ){
                    searchArray = Array( searchArray[midIndex..<searchArray.count] )
                    startIndexWRTParent += midIndex
                }
                else {
                    searchArray = Array( searchArray[0..<midIndex] )
                }
            }
            else {
                searchArray = []
            }
        } while (searchArray.count > 0 )
        return index
    }
}

let input = [0, 1, 21, 33, 45, 45, 61, 71, 72, 73]
var program = Program();
program.binarySearch(array:input, target:33)

