//
//  API.swift
//  Social App
//
//  Created by Osama Ramadan on 03/05/2023.
//

import Foundation
import Alamofire

class API {
    static let baseURL = "https://dummyapi.io/data/v1"
    static let appId = "644cf37577b200f2c9181213"
    static let headers: HTTPHeaders = [
        "app-id" : appId
    ]
}
