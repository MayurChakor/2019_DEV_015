//
//  BowlingGameTests.swift
//  BowlingGameTests
//
//  Created by MAYUR CHAKOR on 12/12/18.
//  Copyright © 2018 MAYUR CHAKOR. All rights reserved.
//

import XCTest
@testable import BowlingGame

class BowlingGameTests: XCTestCase {
    var bowling: Bowling!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        bowling = Bowling()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        bowling = nil
    }
    func testAllOnes() { for _ in 1...20 {
        bowling.roll(1)
        }
        XCTAssertEqual(bowling.getScoreForFrames(), 20)
    }
    private func rollMultiple(pins: Int, times: Int) {
        for _ in 1...times {
            bowling.roll(pins)
        }
    }
    func testOneSpare() {
        bowling.roll(8)
        bowling.roll(2) // spare
        bowling.roll(3)
        rollMultiple(pins: 0, times: 17)
        XCTAssertEqual(bowling.getScoreForFrames(), 16)
    }

}
