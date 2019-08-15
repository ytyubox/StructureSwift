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
    func testLinkListList() {
        let list = LinkList<Int>()
        list.append(3)
        XCTAssert(!list.isEmpty)
        XCTAssert(list[0] == 3)
        XCTAssert(list.last?.value == 3)
    }
}
