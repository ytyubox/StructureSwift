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
}
