//
//  CoinApiError.swift
//  CrptoProjectApi
//
//  Created by Rachit Sharma on 19/07/2025.
//

import Foundation
import Foundation
enum CoinApiError: Error {
    case invalidData
    case jesonfailiure
    case requestfailed(description:String)
    case invalidstatuscode(statuscode:Int)
    case unkonwnerror(error : Error)
    var customDescription: String {
        switch self {
        case .invalidData: "Invalid data"
        case . jesonfailiure : "Json parsing failed"
        case let .requestfailed(description): "request failed \(description)"
        case let .invalidstatuscode(statuscode): "invalid status code \(statuscode)"
        case let .unkonwnerror(error): "unkonwn error \(error)"
        }
    }
    
}

