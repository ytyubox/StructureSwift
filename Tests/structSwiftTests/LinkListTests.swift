//
//  LinkListTests.swift
//  structSwiftTests
//
//  Created by 游宗諭 on 2019/8/15.
//

import XCTest
@testable import structSwift
class LinkListTests: XCTestCase {
    
    func testLinkListAppend() {
        let list = LinkList<Int>()
        list.append(3)
        XCTAssert(!list.isEmpty)
        XCTAssert(list[0] == 3)
        XCTAssert(list.last?.value == 3)
        list.append(4)
        XCTAssert(list.last?.value == 4)
        XCTAssert(list[0] == 3)
    }
    func testLinkListLast() {
        let list = LinkList<Int>()
        list.append(3)
        XCTAssert(!list.isEmpty)
        XCTAssert(list[0] == 3)
        XCTAssert(list.last?.value == 3)
    }
    func testLinkListGetIndex() {
        let list = LinkList<Int>()
        for i in 0...9 {
            list.append(i)
            XCTAssert(list[i] == i)
            XCTAssert(list.node(at: i).value == i)
        }
    }
    func testLinkListPrint() {
        let list = LinkList<Int>()
        let range = (0...Int.random(in: 0...9)).map{$0}
        for i in range {
            list.append(i)
        }
        let experect = range.map{$0}
        XCTAssertEqual(experect.description, list.description)
    }
    func testLinkListInsertNode() {
        let list = LinkList<Int>()
        list.append(0)
        list.append(1)
        list.append(3)
        let node = LinkListNode(value: 2)
        list.insert(node, at: 2)
        XCTAssert(list[2] == 2)
        XCTAssert(list.description == (0...3).map{$0}.description)
    }
}
