//
//  twitterUIDemoTests.swift
//  twitterUIDemoTests
//
//  Created by Prabhat Pankaj on 01/11/23.
//

import XCTest
@testable import twitterUIDemo

final class TwitterUIDemoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTweetNotEqual(){
        let viewModel = TweetRowViewModel(tweet: Tweet(caption: "test", likes: 12))
        XCTAssertNotEqual(viewModel.tweet.caption, "")
    }
    
    func testTweetEqual(){
        let viewModel = TweetRowViewModel(tweet: Tweet(caption: "", likes: 12))
        XCTAssertEqual(viewModel.tweet.caption, "")
    }
    
    func testProfileEqual(){
        let viewModel = ProfileViewModel(user: User(username: "", fullname: "", profileImageUrl: ""))
        XCTAssertEqual(viewModel.user.username, "")
        XCTAssertEqual(viewModel.user.fullname, "")
        XCTAssertEqual(viewModel.user.profileImageUrl, "")
    }
    func testProfileNotEqual(){
        let viewModel = ProfileViewModel(user: User(username: "test", fullname: "test", profileImageUrl: "test"))
        XCTAssertNotEqual(viewModel.user.username, "")
        XCTAssertNotEqual(viewModel.user.fullname, "")
        XCTAssertNotEqual(viewModel.user.profileImageUrl, "")
    }
    
    func testExample() throws {
        XCTAssertTrue(true)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
