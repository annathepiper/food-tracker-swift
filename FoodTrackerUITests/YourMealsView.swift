//
//  YourMealsView.swift
//  FoodTrackerUITests
//
//  Created by Angela Korrati on 6/7/19.
//  Copyright © 2019 Angela Korrati. All rights reserved.
//

import XCTest

class YourMealsView: XCTestCase {
    var app: XCUIApplication!
    
    override func setUp() {
        app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testYourMealsTitleExists() {
        // Verify the Your Meals view has a title on the navigation bar
        XCTAssert(app.navigationBars["Your Meals"].exists)
    }
    
    func testYourMealsEditButtonExists() {
        XCTAssert(app.navigationBars["Your Meals"].buttons["Edit"].exists)
    }
    
    func testYourMealsAddButtonExists() {
        XCTAssert(app.navigationBars["Your Meals"].buttons["Add"].exists)
    }
    
    func testAtLeastThreeMeals() {
        // Verify there are at least three default meals listed (there may be more from persisted data).
        // By definition, we need one table, right?
        XCTAssertEqual(app.tables.count, 1)
        
        // And that table needs to have at least three rows in it
        XCTAssertGreaterThanOrEqual(app.tables.cells.count, 3)
    }
    
    func testEachMealHasStars() {
        // Verify that each meal displays stars in the table view
        let tablesQuery = app.tables
        for i in 1...3 {
            let meal = "meal\(i)"
            let mealCellQuery = tablesQuery.cells.containing(.image, identifier:meal)
            for j in 1...5 {
                let caption = "Set \(j) star rating"
                XCTAssert(mealCellQuery.buttons[caption].exists)
            }
        }
    }
    
    func testNamesOfFirstThreeMeals() {
        // Verify the default meals are listed with the correct names
        let tablesQuery = app.tables
        XCTAssert(tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Caprese Salad"]/*[[".cells.staticTexts[\"Caprese Salad\"]",".staticTexts[\"Caprese Salad\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssert(tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Chicken and Potatoes"]/*[[".cells.staticTexts[\"Chicken and Potatoes\"]",".staticTexts[\"Chicken and Potatoes\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssert(tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Pasta with Meatballs"]/*[[".cells.staticTexts[\"Pasta with Meatballs\"]",".staticTexts[\"Pasta with Meatballs\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
    }
    
    func testImagesOfFirstThreeMeals() {
        // Verify the default meals are listed with at least three test images
        let tablesQuery = app.tables.cells
        XCTAssertGreaterThanOrEqual(tablesQuery.images.count, 3)
    }
    
    func testCapreseSaladRating() {
        // Verify the Caprese Salad sample meal has expected default rating
        let meal1CellsQuery = app.tables.cells.containing(.staticText, identifier:"Caprese Salad")
        let buttonValue = meal1CellsQuery.buttons["Set 4 star rating"].value!
        let buttonString = String(describing: buttonValue)
        XCTAssertTrue(buttonString.hasPrefix("4"))
    }

    func testChickenPotatoesRating() {
        // Verify the Chicken and Potatoes sample meal has expected default rating
        let meal2CellsQuery = app.tables.cells.containing(.staticText, identifier:"Chicken and Potatoes")
        let buttonValue = meal2CellsQuery.buttons["Set 5 star rating"].value!
        let buttonString = String(describing: buttonValue)
        XCTAssertTrue(buttonString.hasPrefix("5"))
    }

    func testPastaMeatballsRating() {
        // Verify the Pasta with Meatballs sample meal has expected default rating
        let meal3CellsQuery = app.tables.cells.containing(.staticText, identifier:"Pasta with Meatballs")
        let buttonValue = meal3CellsQuery.buttons["Set 3 star rating"].value!
        let buttonString = String(describing: buttonValue)
        XCTAssertTrue(buttonString.hasPrefix("3"))
    }

    func testClickEditButtonShowsDeleteCapreseSaladButton() {
        // Verify clicking the Edit button reveals Delete Caprese Salad button
        let yourMealsNavigationBar = app.navigationBars["Your Meals"]
        yourMealsNavigationBar.buttons["Edit"].tap()
        XCTAssert(app.tables/*@START_MENU_TOKEN@*/.buttons["Delete Caprese Salad"]/*[[".cells.buttons[\"Delete Caprese Salad\"]",".buttons[\"Delete Caprese Salad\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
    }

    func testClickEditButtonShowsDeleteChickenPotatoesButton() {
        // Verify clicking the Edit button reveals Delete Chicken and Potatoes button
        let yourMealsNavigationBar = app.navigationBars["Your Meals"]
        yourMealsNavigationBar.buttons["Edit"].tap()
        XCTAssert(app.tables.buttons["Delete Chicken and Potatoes"].exists)
    }

    func testClickEditButtonShowsDeletePastaMeatballsButton() {
        // Verify clicking the Edit button reveals Delete Pasta with Meatballs button
        let yourMealsNavigationBar = app.navigationBars["Your Meals"]
        yourMealsNavigationBar.buttons["Edit"].tap()
        XCTAssert(app.tables.buttons["Delete Pasta with Meatballs"].exists)
    }
}
