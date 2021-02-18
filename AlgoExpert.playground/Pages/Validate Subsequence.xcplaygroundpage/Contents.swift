func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
    guard sequence.count > 0 && array.count > 0 else {
        return false
    }
    
    var sequenceIndex = 0
    for value in array {
        let sequenceValue = sequence[sequenceIndex]
        if( sequenceValue == value ) {
            sequenceIndex += 1
        }
        if ( sequenceIndex >= sequence.count ){
            break
        }
    }
    return sequenceIndex == sequence.count
}

let array = [5, 1, 22, 25, 6, -1, 8, 10]
let isValid = isValidSubsequence(array, [1, 6, 8])
let isNotValid = isValidSubsequence(array, [6, 1, 5])

