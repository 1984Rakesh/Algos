class Program {
    func isPalindrome(string: String) -> Bool {
        var offset = 0
        var isPalindrome = true
        while( isPalindrome == true && offset < (string.count/2)  ){
            var leftIndex = string.index(string.startIndex, offsetBy: offset)
            var rightIndex = string.index(string.endIndex, offsetBy: -(offset+1))
            var leftChar = string[leftIndex]
            var rightChar = string[rightIndex]
            isPalindrome = leftChar == rightChar
            
            offset += 1
        }
        return isPalindrome
    }
}

let program = Program()
program.isPalindrome(string:"NitiN")
program.isPalindrome(string:"Hello")
program.isPalindrome(string:"abcdcba")
program.isPalindrome(string:"abccba")

