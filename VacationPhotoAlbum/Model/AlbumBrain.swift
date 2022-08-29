//
//  ImageArray.swift
//  VacationPhotoAlbum
//
//  Created by Robert Harvey on 6/29/22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct AlbumBrain {
    var album = [
        ImageLibrary(photo: UIImage(named: "Disney1"), caption: "Bert and Betsy Disney Trip 2019", isFavorite: true),
        ImageLibrary(photo: UIImage(named: "Disney2"), caption: "Jack(9) and Ben (6) Disneyland Trip 2019", isFavorite: false),
        ImageLibrary(photo: UIImage(named: "Disney3"), caption: "Ben's first real pool experience!", isFavorite: true),
        ImageLibrary(photo: UIImage(named: "Disney4"), caption: "Jack was determined detail every water pokemon he knew", isFavorite: false),
        ImageLibrary(photo: UIImage(named: "Disney5"), caption: "Jack losing his mind as we explore It'Suger's selection of giant candy", isFavorite: false),
        ImageLibrary(photo: UIImage(named: "Disney6"), caption: "Minions spotted at Universal Studios!", isFavorite: true),
        ImageLibrary(photo: UIImage(named: "Disney7"), caption: "Betsy, Jack, and Ben at Disney's Townsquare", isFavorite: false),
        ImageLibrary(photo: UIImage(named: "Disney8"), caption: "Jack and Ben rode this three times before we could move on!", isFavorite: true),
        ImageLibrary(photo: UIImage(named: "Disney9"), caption: "Betsy enjoying the ferris wheel at Knox's Berry Farm", isFavorite: false),
        ImageLibrary(photo: UIImage(named: "Disney10"), caption: "Ben getting in touch with the force through Dad's new lightsaber.", isFavorite: false),
        ImageLibrary(photo: UIImage(named: "Disney11"), caption: "Bert and Jack flying with Dumbo!", isFavorite: true),
        ImageLibrary(photo: UIImage(named: "Disney12"), caption: "Hydration acquired at Black Spire Outpost", isFavorite: false),
        ImageLibrary(photo: UIImage(named: "Disney13"), caption: "Chewbacca attack!", isFavorite: false),
        ImageLibrary(photo: UIImage(named: "Disney14"), caption: "My two little space cadets.", isFavorite: false),
        ImageLibrary(photo: UIImage(named: "Disney15"), caption: "Family photo in front of my favorite ship from the films, the A-wing!", isFavorite: false),
]

    var photoNumber = 0
    
    func getCaption() -> String? {
        return album[photoNumber].caption
    }
    
    func getPhoto() -> UIImage? {
        return album[photoNumber].photo
    }
    
    mutating func nextPhoto() {
        if photoNumber + 1 < album.count{
        photoNumber += 1
        } else {
            photoNumber = 0
        }
    }
    
    func getProgress() -> Float {
        let progress = Float(photoNumber) / Float(album.count)
        return progress
    }
    
    func checkFavorite() -> UIImage? {
        if album[photoNumber].isFavorite {
            return UIImage(named: "filledHeart")
        } else {
            return UIImage(named: "emptyHearth")
        }
    }
    
    mutating func switchFavorite() {
        if album[photoNumber].isFavorite {
            album[photoNumber].isFavorite = false
        } else {
            album[photoNumber].isFavorite = true
        }
    }
}
