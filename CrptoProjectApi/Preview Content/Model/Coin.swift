//
//  Coin.swift
//  CrptoProjectApi
//
//  Created by Rachit Sharma on 19/07/2025.
//

import Foundation
struct Coin:Codable,Identifiable,Hashable{
    let id:String
    let name:String
    let symbol:String
}
