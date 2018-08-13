//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by Macbook Pro on 12/08/18.
//  Copyright © 2018 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes
class MinutesTests: XCTestCase {
    
    var entryUnderTest : Entry!
    
    override func setUp() {
        super.setUp()
        entryUnderTest = Entry("Test title", "Test description")
    }
    
    override func tearDown() {
        entryUnderTest = nil
        super.tearDown()
    }
    
    func testSerialization() {
        let serializedData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serializedData!)
        
        XCTAssertEqual(entry?.title, "Test title")
        XCTAssertEqual(entry?.content, "Test description")
    }
    
}
