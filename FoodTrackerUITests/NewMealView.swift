//
//  NewMealView.swift
//  FoodTrackerUITests
//
//  Created by Angela Korrati on 6/10/19.
//  Copyright © 2019 Angela Korrati. All rights reserved.
//

import XCTest

class NewMealView: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testNewMealTitleExists() {
        // Verify the New Meal view has a title on the navigation bar
        app.navigationBars["Your Meals"].buttons["Add"].tap()
        XCTAssert(app.navigationBars["New Meal"].exists)
    }
    
    func testNewMealCancelButtonExists() {
        // Verify the New Meal view has a Cancel button on the navigation bar
        app.navigationBars["Your Meals"].buttons["Add"].tap()
        XCTAssert(app.navigationBars["New Meal"].buttons["Cancel"].exists)
    }
    
    func testNewMealCancelButtonReturnsToYourMeals() {
        // Verify clicking on the Cancel button returns you to the Your Meals view
        app.navigationBars["Your Meals"].buttons["Add"].tap()
        app.navigationBars["New Meal"].buttons["Cancel"].tap()
        XCTAssert(app.navigationBars["Your Meals"].exists)
    }
    
    func testNewMealSaveButtonExistsIsDisabled() {
        // Verify the New Meal view has a Save button on the navigation bar and that the button is disabled by default
        app.navigationBars["Your Meals"].buttons["Add"].tap()
        XCTAssert(app.navigationBars["New Meal"].buttons["Save"].exists)
        XCTAssertFalse(app.navigationBars["New Meal"].buttons["Save"].isEnabled)
    }
    
    func testNewMealNameBoxExists() {
        // Verify the New Meal view has a text entry box to enter the meal name
        app.navigationBars["Your Meals"].buttons["Add"].tap()
        XCTAssert(app.textFields["Enter meal name"].exists)
    }
    
    func testNewMealDefaultPhotoExists() {
        // Verify the New Meal view has a default photo
        app.navigationBars["Your Meals"].buttons["Add"].tap()
        XCTAssert(app.images["defaultPhoto"].exists)
    }

    func testNewMealTapDefaultPhoto() {
        // Verify the New Meal view shows Camera Roll when you tap the default photo
        app.navigationBars["Your Meals"].buttons["Add"].tap()
        app.images["defaultPhoto"].tap()
        XCTAssert(app.otherElements.navigationBars["Photos"].waitForExistence(timeout: 5))
    }
}
