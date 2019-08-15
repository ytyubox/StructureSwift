//
//  List.swift
//  structSwift
//
//  Created by 游宗諭 on 2019/8/15.
//

public
class LinkListNode<Element> {
    public init(value: Element) {
        self.value = value
    }
    public var value:Element
    public var next:LinkListNode?
}
