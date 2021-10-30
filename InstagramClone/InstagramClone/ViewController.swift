//
//  ViewController.swift
//  InstagramClone
//
//  Created by Rayan Taj on 30/10/2021.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource  {
    
    var instagramAccount = [
    Account(accountName: "rayantaj", profileImage: "avatar", imagesArr: ["jed1" , "jed2" , "jed3"]),
    
    Account(accountName: "ahmed231", profileImage: "avatar", imagesArr: ["rud1" , "rud2" , "jed2"]),
    
    Account(accountName: "tariqalghamdi", profileImage: "avatar", imagesArr: ["jed2" , "jed2" , "jed3"])

    ]
    
    
    @IBOutlet weak var tableViewController: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return instagramAccount.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let customPostCell = tableView.dequeueReusableCell(withIdentifier: "postCustomCell") as! postTableViewCell
        
//        customPostCell.accountName.text = instagramAccount[indexPath.row].accountName
        customPostCell.nameButton.titleLabel?.text = instagramAccount[indexPath.row].accountName
        customPostCell.avatar.image = UIImage(named: instagramAccount[indexPath.row].profileImage)
        
//        customPostCell.sb = storyboard!
        
//        customPostCell.avatar.layer.masksToBounds = true
//        customPostCell.avatar.layer.cornerRadius = customPostCell.bounds.width / 1
        
        customPostCell.imagePost.image = UIImage(named: instagramAccount[indexPath.row].imagesArr[0])
        
        return customPostCell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 575
    }

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewController.delegate = self
        tableViewController.dataSource = self
        
    }


}

