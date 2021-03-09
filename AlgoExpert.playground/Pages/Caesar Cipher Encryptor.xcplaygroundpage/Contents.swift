class Program {
    func caesarCipherEncryptor(string: String, key: UInt32) -> String {
        var encryptedString = ""
        for char in string {
            let value = UInt32(char.asciiValue ?? 0)
            let newValue = ((value - 97 + key) % 26) + 97
            if let uni = UnicodeScalar(newValue) {
                let encyStr = Character(uni)
                encryptedString.append(encyStr)
            }
        }
        return encryptedString
    }
}

let string = "abcdefghijklmnopqrstuvwxyz"
let key = UInt32(2)
let encryptedString = Program().caesarCipherEncryptor(string:string, key:key)
