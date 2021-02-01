//
//  Post.swift
//  Insta_Demo_3
//
//  Created by kim jong moon on 31/01/2021.
//

import Foundation

class Post {
    
    var fullname: String? = ""
    var profile_img: String? = ""
    var post_img_Right: String? = ""
    var post_img_Left: String? = ""
    
    init(fullname: String, profile_img: String, post_img_Right: String, post_img_Left: String) {
        self.fullname = fullname
        self.profile_img = profile_img
        self.post_img_Right = post_img_Right
        self.post_img_Left = post_img_Left
    }
    
}
