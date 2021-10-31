//
//  imageViewController.swift
//  InstagramClone
//
//  Created by Rayan Taj on 31/10/2021.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var imageUI: UIImageView!
    
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageUI.image = image
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
