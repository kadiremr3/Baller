//
//  Baller.swift
//  Baller
//
//  Created by Kadir Emre on 12.07.2021.
//

import UIKit

class Baller {
    
    var name           : String
    var age            : Int
    var gender         : String?
    var bio            : String
    var profilePicture : UIImage
    
    
    
    init(name: String, age: Int, gender: String?, bio: String, profilePicture: UIImage) {
        self.name = name
        self.age = age
        self.gender = gender
        self.bio = bio
        self.profilePicture = profilePicture
    }
}
