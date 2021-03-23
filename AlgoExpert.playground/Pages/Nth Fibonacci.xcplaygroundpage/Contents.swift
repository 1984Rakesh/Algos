class Program {
    func _getNthFib(n: Int, memo:inout [Int:Int]) -> Int {
        if( n <= 0 ) { return 0 }
        if( n == 1 ) { return 1 }
        if( n == 2 ) { return 1 }
        if let value = memo[n] {
            return value
        }
        let value = _getNthFib(n:n-1, memo:&memo) + _getNthFib(n:n-2, memo:&memo)
        memo[n] = value
        return value
    }
    
    func getNthFib(n: Int) -> Int {
        var computedFibonacci = [Int:Int]()
        return _getNthFib(n:n-1, memo:&computedFibonacci)
    }
}

//return n - 1 considering zero as first index 
let program = Program()
program.getNthFib(n:3)
program.getNthFib(n:8)
program.getNthFib(n:6)
program.getNthFib(n:5)
program.getNthFib(n:11)
