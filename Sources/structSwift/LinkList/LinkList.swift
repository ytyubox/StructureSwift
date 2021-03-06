//
//  LinkList.swift
//  structSwift
//
//  Created by 游宗諭 on 2019/8/15.
//

public class LinkList<Element> {
    public typealias Node = LinkListNode<Element>
    private var head:Node?
    public var isEmpty:Bool {return head == nil}
    public var first:Node? {return head}
    public var last:Node? {
        guard var node = head else { return nil}
        while let next = node.next { node = next }
        return node
    }
    public subscript (index:Int) -> Element {
        if 0 == index {return head!.value}
        var node = head?.next
        for _ in 1..<index {
            node = node?.next
            if node == nil {break}
        }
        return node!.value
    }
    public func node(at index:Int) -> Node {
        if 0 == index {return head!}
        var node = head?.next
        for _ in 1..<index {
            node = node?.next
            if node == nil {break}
        }
        return node!
    }
    
    
    public var count:Int {
        guard var node = head else { return 0}
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    public func append(_ element: Element) {
        let newNode = Node(value: element)
        if let lastNode = last {
            lastNode.next = newNode
            return
        }
        head = newNode
    }
    func insert(_ node:Node, at index:Int) {
        if 0 == index {
            node.next = head
            head = node
            return
        }
        let priviouNode = self.node(at: index - 1)
        let nextNode = priviouNode.next
        priviouNode.next = node
        node.next = nextNode
    }
}

extension LinkList:CustomStringConvertible {
    public var description: String {
        var array =  [Element]()
        
        guard var node = head else {return array.description}
       
            array.append(node.value)
        while let next = node.next {
            node = next
            array.append(node.value)
            
        }
        return array.description
    }
}
