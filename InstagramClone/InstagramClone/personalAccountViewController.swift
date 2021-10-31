//
//  personalAccountViewController.swift
//  InstagramClone
//
//  Created by Rayan Taj on 30/10/2021.
//

import UIKit

class personalAccountViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
 
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AccountObj.imagesArr.count
    }
    
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
      {
         return CGSize(width: 135.0, height: 130.0)
      }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCellID", for: indexPath as IndexPath) as! CollectionViewCell
        
        
        customCell.imageCell.image = UIImage(named: AccountObj.imagesArr[indexPath.row])
        
        return customCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "imageViewController") as! imageViewController
        
        
        vc.image =  UIImage(named: AccountObj.imagesArr[indexPath.row])!
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    var AccountObj = Account()
    
 
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var accountName: UILabel!
    
    @IBOutlet weak var accountAvatar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        accountName.text = AccountObj.accountName
        
        collectionView.dataSource = self
        collectionView.delegate = self
     
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
