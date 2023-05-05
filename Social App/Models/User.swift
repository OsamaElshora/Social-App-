//
//  User.swift
//  Social App
//
//  Created by Osama Ramadan on 04/05/2023.
//

import Foundation
import UIKit

struct User: Decodable {
    var id: String
    var firstName: String
    var lastName: String
    var picture: String?
    var phone: String?
    var email: String?
    var gender: String?
    var location: Location?
}
