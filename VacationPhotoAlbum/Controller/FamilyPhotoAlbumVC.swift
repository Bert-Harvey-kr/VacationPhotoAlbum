

import UIKit

class FamilyPhotoAlbumVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var captionView: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var favoriteView: UIImageView!
    
    var albumBrain = AlbumBrain()
    
    
    @IBAction func changeFavorite(_ sender: UIButton) {
        albumBrain.switchFavorite()
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton){
        albumBrain.nextPhoto()
        updateUI()
    }
    
    @objc func updateUI() {
        progressBar?.progress = albumBrain.getProgress()
        imageView.image = albumBrain.getPhoto()  ?? UIImage(named: "error")
        captionView?.text = albumBrain.getCaption() ?? String("Harvey Family Trip 2019")
        favoriteView.image = albumBrain.checkFavorite() ?? UIImage(named: "emptyHeart")
    }
}

