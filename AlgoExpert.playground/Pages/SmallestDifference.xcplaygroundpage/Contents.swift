class Program {
    func smallestDifference_1(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
        var values = [Int]()
        var smallestDiff = Int.max
        for i in arrayOne {
            for j in arrayTwo {
                let distance = abs(i - j)
                if distance < smallestDiff {
                    smallestDiff = distance
                    values = [i, j]
                    if( distance == 0 ){
                        return values
                    }
                }
            }
        }
        return values
    }
    
    func smallestDifference_2(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
        var values = [Int]()
        var smallestDiff = Int.max
        arrayOne.sort()
        arrayTwo.sort()
        for i in arrayOne {
            for j in arrayTwo {
                let distance = abs(i - j)
                if distance < smallestDiff {
                    values = [i, j]
                    smallestDiff = distance
                }
                else {
                    break
                }
            }
        }
        return values
    }
}

var arrayOne = [-1, 5, 10, 20, 3]
var arrayTwo = [26, 134, 135, 15, 17]
let prog = Program()
let diff = prog.smallestDifference_2(arrayOne: &arrayOne, arrayTwo: &arrayTwo)
