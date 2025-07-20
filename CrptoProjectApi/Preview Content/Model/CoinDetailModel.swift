//
//  CoinDetailModel.swift
//  CrptoProjectApi
//
//  Created by Rachit Sharma on 20/07/2025.
//

import Foundation
struct CoinDetailModel: Decodable {
    let id : String
    let name : String
    let symbol : String
    let description : description
}
struct description:Decodable{
    let text : String
    enum CodingKeys: String, CodingKey {
        case text = "en"
    }
}
