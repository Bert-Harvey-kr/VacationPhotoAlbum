//
//  VacationPhotoAlbumUITests.swift
//  VacationPhotoAlbumUITests
//
//  Created by Robert Harvey on 7/19/22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import XCTest

class MainScreen {
    
    let app: XCUIApplication
    init(app: XCUIApplication) {
        self.app = app
    }
    lazy var nextButton = app.staticTexts["Next"]
    lazy var favoriteButton = app.staticTexts["Fav. +/-"]
    lazy var favoriteImage = app.images["favorites"]
    lazy var progressBar = app.progressIndicators["progressBar"]

}
