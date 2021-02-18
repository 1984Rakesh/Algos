class Program {
    // This is an input class. Do not edit.
    class LinkedList : CustomDebugStringConvertible{
        var value: Int
        var next: LinkedList?
        
        init(value: Int) {
            self.value = value
            next = nil
        }
        
        var debugDescription: String {
            return "\(value), \(next?.debugDescription ?? "$")"
        }
    }
    
    static func linkedListWithValues(_ values:[Int]) -> LinkedList? {
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
    
    func mergeLinkedLists(_ headOne: LinkedList, _ headTwo: LinkedList) -> LinkedList {
        var traverseList : LinkedList? = headOne.value < headTwo.value ? headOne : headTwo
        var traverseListPN : LinkedList? = nil
        var compareList : LinkedList? = traverseList === headOne ? headTwo : headOne
        let newHead : LinkedList = traverseList!
        while traverseList != nil  {
            if( traverseList!.value > compareList!.value ){
                traverseListPN?.next = compareList
                
                let temp = traverseList
                traverseList = compareList
                compareList = temp
            }
            
            traverseListPN = traverseList
            traverseList = traverseList?.next
        }
        
        if( compareList != nil ){
            traverseListPN?.next = compareList
        }
        
        return newHead
    }
}

let l1 = Program.linkedListWithValues([2,6,7,8])
let l2 = Program.linkedListWithValues([1,3,4,5,9,10])
let program = Program()
program.mergeLinkedLists(l1!, l2!)
