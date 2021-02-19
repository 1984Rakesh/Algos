public class LinkedList : CustomDebugStringConvertible{
    public private(set) var value: Int
    public var next: LinkedList?
    
    public init(value: Int) {
        self.value = value
        next = nil
    }
    
    public var debugDescription: String {
        return "\(value), \(next?.debugDescription ?? "$")"
    }
}
