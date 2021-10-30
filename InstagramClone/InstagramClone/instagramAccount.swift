//
//  instagramAccount.swift
//  InstagramClone
//
//  Created by Rayan Taj on 30/10/2021.
//

import Foundation

class Account {
    
    var accountName : String = ""
    var profileImage : String = ""
    var imagesArr : [String] = [""]
    
    
    init(accountName : String ,profileImage : String,imagesArr : [String]) {
        
        self.accountName = accountName
        self.profileImage = profileImage
        self.imagesArr = imagesArr
        
    }
    
    init() {
        
    }
    
}
