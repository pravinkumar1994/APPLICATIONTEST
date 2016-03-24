//
//  ApplicationtestUITests.swift
//  ApplicationtestUITests
//
//  Created by BLT0009-MACMI on 22/03/16.
//  Copyright © 2016 BLT0009-MACMI. All rights reserved.
//

import XCTest

class ApplicationtestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        
        let app = XCUIApplication()
        app.buttons["Say Hello"].tap()
        app.alerts["Alert"].collectionViews.buttons["OK"].tap()
        
        
          // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
    func testShowElements() {
        
        let app = XCUIApplication()
        app.buttons["Show Elements"].tap()
        
        let appleStaticText = app.tables.staticTexts["Apple"]
        appleStaticText.swipeDown()
        app.otherElements.containingType(.NavigationBar, identifier:"Applicationtest.View").childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.Table).element.swipeUp()
        appleStaticText.swipeDown()
 
        }
    
    func testShowImage(){
        
        
        let app = XCUIApplication()
        app.buttons["Show image"].tap()
        
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery.images["Food5.jpeg"].swipeUp()
        collectionViewsQuery.images["Food6.jpeg"].tap()
        
        let backButton = app.navigationBars["Applicationtest.View"].childrenMatchingType(.Button).matchingIdentifier("Back").elementBoundByIndex(0)
        backButton.tap()
        collectionViewsQuery.images["Food12.jpeg"].tap()
        backButton.tap()
        app.otherElements.containingType(.NavigationBar, identifier:"Applicationtest.View").childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.CollectionView).element.swipeDown()
        collectionViewsQuery.images["Food1.jpeg"].tap()
        backButton.tap()
        
    }
}
