//
//  Post.swift
//  Social App
//
//  Created by Osama Ramadan on 03/05/2023.
//

import Foundation
import UIKit

struct Post: Decodable {
    var id: String
    var image: String
    var likes: Int
    var text: String
    var owner: User
    var tags: [String]?
}


