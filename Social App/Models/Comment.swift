//
//  Comment.swift
//  Social App
//
//  Created by Osama Ramadan on 03/05/2023.
//

import Foundation
struct Comment: Decodable {
    var id: String
    var message: String
    var owner: User
}
