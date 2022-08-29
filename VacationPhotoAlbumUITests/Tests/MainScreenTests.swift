//
//  MainScreenTests.swift
//  VacationPhotoAlbumUITests
//
//  Created by Robert Harvey on 7/29/22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import XCTest

class MainScreenTests: XCTestCase {
    

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testNextButton() throws {
        
        let app = XCUIApplication()
        app.launch()
        let mainScreen = MainScreen(app: app)
        
        XCTAssert(mainScreen.nextButton.exists)
        
        mainScreen.nextButton.tap()
        
        XCTAssert(mainScreen.nextButton.exists)

        }
    func testFavorites() throws {
        
        let app = XCUIApplication()
        app.launch()
        let mainScreen = MainScreen(app: app)
        
        
        
        XCTAssert(mainScreen.favoriteImage.exists)
        
        XCTAssert(mainScreen.favoriteButton.exists)
        
        mainScreen.favoriteButton.tap()
        
        XCTAssert(mainScreen.favoriteImage.exists)
                
        }
    func testProgressBar() throws {
            
            let app = XCUIApplication()
            app.launch()
            let mainScreen = MainScreen(app: app)
            

            
        XCTAssertEqual(mainScreen.progressBar.value as? String, "0%")
            
            mainScreen.nextButton.tap()
            
        XCTAssertEqual(mainScreen.progressBar.value as? String, "7%")
            }
    

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
