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
    
    public static func linkedListWithValues(_ values:[Int]) -> LinkedList? {
        guard values.count > 0 else {
            return nil
        }
        var head : LinkedList? = nil
        var previousNode : LinkedList? = nil
        var index = 0
        repeat {
            let newNode = LinkedList(value: values[index])
            if( head == nil ){
                head = newNode
            }
            previousNode?.next = newNode
            previousNode = newNode
            index += 1
        } while index < values.count
        
        return head
    }
}
