//
//  PhotoDetailsViewController.swift
//  tumblrFeed
//
//  Created by Calvin Chu on 2/8/17.
//  Copyright © 2017 Kevin M Call. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    @IBOutlet weak var photo: UIImageView!
    var photoUrl: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let imageUrl = URL(string: photoUrl!) {
            self.photo.setImageWith(imageUrl)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapPhoto(_ sender: UITapGestureRecognizer) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let fullScreen = mainStoryboard.instantiateViewController(withIdentifier: "fullScreen") as! FullScreenPhotoViewController
        fullScreen.photo = photo.image
        present(fullScreen, animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

}
