//
//  Tests.swift
//  VacationPhotoAlbumUITests
//
//  Created by Robert Harvey on 7/28/22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import XCTest
import Foundation


func testNextButton() throws {
    
    let app = XCUIApplication()
    let mainScreen = MainScreen(app: app)
    
    app.launch()
    
    XCTAssert(mainScreen.nextButton.exists)
    
    mainScreen.nextButton.tap()
    
    XCTAssert(mainScreen.nextButton.exists)

    }

func testFavorites() throws {
    
    let app = XCUIApplication()
    let mainScreen = MainScreen(app: app)
    
    app.launch()
    
    XCTAssert(mainScreen.favoriteImage.exists)
    
    XCTAssert(mainScreen.favoriteButton.exists)
    
    mainScreen.favoriteButton.tap()
    
    XCTAssert(mainScreen.favoriteImage.exists)
            
    }

func testProgressBar() throws {
    
    let app = XCUIApplication()
    let mainScreen = MainScreen(app: app)
    
    app.launch()

    
    XCTAssertEqual(mainScreen.progressBar as? String, "0%")
    
    mainScreen.nextButton.tap()
    
    XCTAssertEqual(mainScreen.progressBar as? String, "7%")
    }

