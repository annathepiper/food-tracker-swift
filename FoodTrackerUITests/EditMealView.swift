//
//  EditMealView.swift
//  FoodTrackerUITests
//
//  Created by Angela Korrati on 6/10/19.
//  Copyright © 2019 Angela Korrati. All rights reserved.
//

import XCTest

class EditMealView: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEditMealTitleExistsCapreseSalad() {
        // Verify the Edit Meal view has the correct title on the navigation bar when you click on the Caprese Salad meal
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Caprese Salad"]/*[[".cells.staticTexts[\"Caprese Salad\"]",".staticTexts[\"Caprese Salad\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssert(app.navigationBars["Caprese Salad"].exists)
    }

    func testEditMealTitleExistsChickenPotatoes() {
        // Verify the Edit Meal view has the correct title on the navigation bar when you click on the Chicken and Potatoes meal
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Chicken and Potatoes"].tap()
        XCTAssert(app.navigationBars["Chicken and Potatoes"].exists)
    }
    
    func testEditMealTitleExistsPastaMeatballs() {
        // Verify the Edit Meal view has the correct title on the navigation bar when you click on the Pasta With Meatballs meal
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Pasta with Meatballs"].tap()
        XCTAssert(app.navigationBars["Pasta with Meatballs"].exists)
    }

    func testEditMealCancelButtonExistsCapreseSalad() {
        // Verify the Edit Meal view has a Cancel button on the navigation bar when you click on the Caprese Salad meal
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Caprese Salad"]/*[[".cells.staticTexts[\"Caprese Salad\"]",".staticTexts[\"Caprese Salad\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssert(app.navigationBars["Caprese Salad"].buttons["Cancel"].exists)
    }
    
    func testEditMealCancelButtonExistsChickenPotatoes() {
        // Verify the Edit Meal view has a Cancel button on the navigation bar when you click on the Chicken and Potatoes meal
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Chicken and Potatoes"].tap()
        XCTAssert(app.navigationBars["Chicken and Potatoes"].buttons["Cancel"].exists)
    }
    
    func testEditMealCancelButtonExistsPastaMeatballs() {
        // Verify the Edit Meal view has a Cancel button on the navigation bar when you click on the Pasta With Meatballs meal
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Pasta with Meatballs"].tap()
        XCTAssert(app.navigationBars["Pasta with Meatballs"].buttons["Cancel"].exists)
    }
    
    func testEditMealCancelButtonReturnsToYourMealsCapreseSalad() {
        // Verify clicking on the Cancel button in Caprese Salad Edit view returns you to the Your Meals view
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Caprese Salad"].tap()
        app.navigationBars["Caprese Salad"].buttons["Cancel"].tap()
        XCTAssert(app.navigationBars["Your Meals"].exists)
    }
    
    func testEditMealCancelButtonReturnsToYourMealsChickenPotatoes() {
        // Verify clicking on the Cancel button in Chicken and Potatoes Edit view returns you to the Your Meals view
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Chicken and Potatoes"].tap()
        app.navigationBars["Chicken and Potatoes"].buttons["Cancel"].tap()
        XCTAssert(app.navigationBars["Your Meals"].exists)
    }
    
    func testEditMealCancelButtonReturnsToYourMealsPastaMeatballs() {
        // Verify clicking on the Cancel button in Pasta with Meatballs Edit view returns you to the Your Meals view
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Pasta with Meatballs"].tap()
        app.navigationBars["Pasta with Meatballs"].buttons["Cancel"].tap()
        XCTAssert(app.navigationBars["Your Meals"].exists)
    }
    
    func testEditMealSaveButtonExistsIsEnabledCapreseSalad() {
        // Verify the Edit Meal view for Caprese Salad has a Save button on the navigation bar and that the button is enabled by default
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Caprese Salad"].tap()
        XCTAssert(app.navigationBars["Caprese Salad"].buttons["Save"].exists)
        XCTAssert(app.navigationBars["Caprese Salad"].buttons["Save"].isEnabled)
    }
    
    func testEditMealSaveButtonExistsIsEnabledChickenPotatoes() {
        // Verify the Edit Meal view for Chicken and Potatoes has a Save button on the navigation bar and that the button is enabled by default
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Chicken and Potatoes"].tap()
        XCTAssert(app.navigationBars["Chicken and Potatoes"].buttons["Save"].exists)
        XCTAssert(app.navigationBars["Chicken and Potatoes"].buttons["Save"].isEnabled)
    }

    func testEditMealSaveButtonExistsIsEnabledPastaMeatballs() {
        // Verify the Edit Meal view for Pasta with Meatballs has a Save button on the navigation bar and that the button is enabled by default
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Pasta with Meatballs"].tap()
        XCTAssert(app.navigationBars["Pasta with Meatballs"].buttons["Save"].exists)
        XCTAssert(app.navigationBars["Pasta with Meatballs"].buttons["Save"].isEnabled)
    }

    func testEditMealEditBoxExistsCapreseSalad() {
        // Verify the Edit Meal view for Caprese Salad has an edit box set to the correct current meal name
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Caprese Salad"].tap()
        XCTAssert(app.textFields["Caprese Salad"].exists)
    }
    
    func testEditMealEditBoxExistsChickenPotatoes() {
        // Verify the Edit Meal view for Chicken and Potatoes has an edit box set to the correct current meal name
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Chicken and Potatoes"].tap()
        XCTAssert(app.textFields["Chicken and Potatoes"].exists)
    }
    
    func testEditMealEditBoxExistsPastaMeatballs() {
        // Verify the Edit Meal view for Pasta with Meatballs has an edit box set to the correct current meal name
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Pasta with Meatballs"].tap()
        XCTAssert(app.textFields["Pasta with Meatballs"].exists)
    }
    
    func testEditMealPhotoExistsCapreseSalad() {
        // Verify the Edit Meal view for Caprese Salad has the correct current photo
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Caprese Salad"].tap()
        XCTAssert(app.images["meal1"].exists)
    }

    func testEditMealPhotoExistsChickenPotatoes() {
        // Verify the Edit Meal view for Chicken and Potatoes has the correct current photo
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Chicken and Potatoes"].tap()
        XCTAssert(app.images["meal2"].exists)
    }

    func testEditMealPhotoExistsPastaMeatballs() {
        // Verify the Edit Meal view for Pasta with Meatballs has the correct current photo
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Pasta with Meatballs"].tap()
        XCTAssert(app.images["meal3"].exists)
    }
    
    func testEditMealCapreseSaladTapPhoto() {
        // Verify the Edit Meal view for Caprese Salad shows Camera Roll when you tap the photo
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Caprese Salad"].tap()
        app.images["meal1"].tap()
        XCTAssert(app.otherElements.navigationBars["Photos"].waitForExistence(timeout: 5))
    }
    
    func testEditMealChickenPotatoesTapPhoto() {
        // Verify the Edit Meal view for Caprese Salad shows Camera Roll when you tap the photo
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Chicken and Potatoes"].tap()
        app.images["meal2"].tap()
        XCTAssert(app.otherElements.navigationBars["Photos"].waitForExistence(timeout: 5))
    }
    
    func testEditMealPastaMeatballsTapPhoto() {
        // Verify the Edit Meal view for Caprese Salad shows Camera Roll when you tap the photo
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Pasta with Meatballs"].tap()
        app.images["meal3"].tap()
        XCTAssert(app.otherElements.navigationBars["Photos"].waitForExistence(timeout: 5))
    }
    
    func testEditMealNameCapreseSalad() {
        // Verify that you can successfully edit the name of the Caprese Salad meal. First, tap on the correct meal
        app.tables.staticTexts["Caprese Salad"].tap()
        
        // Double tap so you can select the previously existing name and get rid of it
        let enterMealNameTextField = app.textFields["Enter meal name"]
        enterMealNameTextField.doubleTap()
        app.menuItems["Select All"].tap()
        app.menuItems["Cut"].tap()
        
        // Now type in the new name and hit done on the keyboard
        enterMealNameTextField.typeText("Caprese Salad Edited")
        app.buttons["Done"].tap()
        
        // Is the edited meal name now in our Your Meals view?
        app.navigationBars["Caprese Salad Edited"].buttons["Save"].tap()
        let tablesQuery = app.tables
        XCTAssert(tablesQuery.staticTexts["Caprese Salad Edited"].exists)
        
        // Now do this again to return to previous state
        app.tables.staticTexts["Caprese Salad Edited"].tap()

        // Double tap so you can select the previously existing name and get rid of it
        enterMealNameTextField.doubleTap()
        app.menuItems["Select All"].tap()
        app.menuItems["Cut"].tap()
        
        // Now type in the new name and hit done on the keyboard
        enterMealNameTextField.typeText("Caprese Salad")
        app.buttons["Done"].tap()
        
        // Is the original meal name now in our Your Meals view?
        app.navigationBars["Caprese Salad"].buttons["Save"].tap()
        XCTAssert(tablesQuery.staticTexts["Caprese Salad"].exists)
   }

    func testEditMealNameChickenPotatoes() {
        // Verify that you can successfully edit the name of the Chicken and Potatoes meal. First, tap on the correct meal
        app.tables.staticTexts["Chicken and Potatoes"].tap()
        
        // Double tap so you can select the previously existing name and get rid of it
        let enterMealNameTextField = app.textFields["Enter meal name"]
        enterMealNameTextField.doubleTap()
        app.menuItems["Select All"].tap()
        app.menuItems["Cut"].tap()
        
        // Now type in the new name and hit done on the keyboard
        enterMealNameTextField.typeText("Chicken and Potatoes Edited")
        app.buttons["Done"].tap()
        
        // Is the edited meal name now in our Your Meals view?
        app.navigationBars["Chicken and Potatoes Edited"].buttons["Save"].tap()
        let tablesQuery = app.tables
        XCTAssert(tablesQuery.staticTexts["Chicken and Potatoes Edited"].waitForExistence(timeout: 5))
        
        // Now do this again to return to previous state
        app.tables.staticTexts["Chicken and Potatoes Edited"].tap()
        
        // Double tap so you can select the previously existing name and get rid of it
        enterMealNameTextField.doubleTap()
        app.menuItems["Select All"].tap()
        app.menuItems["Cut"].tap()
        
        // Now type in the new name and hit done on the keyboard
        enterMealNameTextField.typeText("Chicken and Potatoes")
        app.buttons["Done"].tap()
        
        // Is the original meal name now in our Your Meals view?
        app.navigationBars["Chicken and Potatoes"].buttons["Save"].tap()
        XCTAssert(tablesQuery.staticTexts["Chicken and Potatoes"].waitForExistence(timeout: 5))
    }

    func testEditMealNamePastaMeatballs() {
        // Verify that you can successfully edit the name of the Pasta with Meatballs meal. First, tap on the correct meal
        app.tables.staticTexts["Pasta with Meatballs"].tap()
        
        // Double tap so you can select the previously existing name and get rid of it
        let enterMealNameTextField = app.textFields["Enter meal name"]
        enterMealNameTextField.doubleTap()
        app.menuItems["Select All"].tap()
        app.menuItems["Cut"].tap()
        
        // Now type in the new name and hit done on the keyboard
        enterMealNameTextField.typeText("Pasta with Meatballs Edited")
        app.buttons["Done"].tap()
        
        // Is the edited meal name now in our Your Meals view?
        app.navigationBars["Pasta with Meatballs Edited"].buttons["Save"].tap()
        let tablesQuery = app.tables
        XCTAssert(tablesQuery.staticTexts["Pasta with Meatballs Edited"].waitForExistence(timeout: 5))
        
        // Now do this again to return to previous state
        app.tables.staticTexts["Pasta with Meatballs Edited"].tap()
        
        // Double tap so you can select the previously existing name and get rid of it
        enterMealNameTextField.doubleTap()
        app.menuItems["Select All"].tap()
        app.menuItems["Cut"].tap()
        
        // Now type in the new name and hit done on the keyboard
        enterMealNameTextField.typeText("Pasta with Meatballs")
        app.buttons["Done"].tap()
        
        // Is the original meal name now in our Your Meals view?
        app.navigationBars["Pasta with Meatballs"].buttons["Save"].tap()
        XCTAssert(tablesQuery.staticTexts["Pasta with Meatballs"].waitForExistence(timeout: 5))
    }
}
