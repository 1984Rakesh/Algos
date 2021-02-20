extension Program {
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

let l1 = LinkedList.linkedListWithValues([2,6,7,8])
let l2 = LinkedList.linkedListWithValues([1,3,4,5,9,10])
let program = Program()
program.mergeLinkedLists(l1!, l2!)
