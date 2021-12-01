extension Program {
    func lastNode(_ head:LinkedList ) -> LinkedList {
        if let next = head.next {
            return lastNode(next)
        }
        else {
            return head
        }
    }
    
    func nodePreviousTo(_ head:LinkedList, previousTo:LinkedList) -> LinkedList {
        if ( head.next === previousTo ){
            return head
        }
        else {
            return nodePreviousTo(head.next!, previousTo: previousTo)
        }
    }
    
    //this is worst time log(n)
    func isPalindrome1(head:LinkedList, tail:LinkedList) -> Bool {
        var returnValue : Bool = false
        if( head === tail ){
            returnValue = true
        }
        else if( head.value == tail.value ) {
            returnValue = true;
            if( head.next !== tail ) {
                returnValue = isPalindrome1(head: head.next!,
                                           tail: nodePreviousTo(head.next!, previousTo: tail))
            }
        }
        return returnValue
    }
    
    func solution1(_ head: LinkedList) -> Bool {
        let tail = lastNode(head)
        return isPalindrome1( head: head, tail: tail)
    }
    
    func isPalindrome2(_ leftHead:LinkedList, _ rightHead:LinkedList) -> (LinkedList,Bool) {
        if( rightHead.next == nil ){
            return ( leftHead.next!, leftHead.value == rightHead.value )
        }
        else {
            let isOuterPalidrome = isPalindrome2(leftHead, rightHead.next!)
            let outerResult = isOuterPalidrome.1
            let nextNode = isOuterPalidrome.0
            return ( nextNode.next!, outerResult && (nextNode.value == rightHead.value))
        }
    }
    
    func solution2( _ head: LinkedList ) -> Bool {
        return isPalindrome2( head, head).1
    }
    
    func linkedListPalindrome(_ head: LinkedList) -> Bool {
        return solution1(head)
    }
}

let list = LinkedList.linkedListWithValues([0,1,2,2,1,0])
var isPalindrome = Program().linkedListPalindrome(list!)
