//
//  CoinServiceModel.swift
//  CrptoProjectApi
//
//  Created by Rachit Sharma on 19/07/2025.
//

import Foundation
class CoinServiceModel{
    func fetchCoinDetail(id : String)async throws -> CoinDetailModel?{
       let urlstring = "https://api.coingecko.com/api/v3/coins/\(id)"
        guard let url = URL(string: urlstring) else {
            throw CoinApiError.requestfailed(description: "invalid URL")
        }
        let(data,response) = try await URLSession.shared.data(from: url)
        guard let httpresponse = response as? HTTPURLResponse else {
            throw CoinApiError.requestfailed(description: "invalid response")
        }
        guard httpresponse.statusCode == 200 else {
            throw CoinApiError.invalidstatuscode(statuscode: httpresponse.statusCode)
        }
        do {
            let detail = try JSONDecoder().decode(CoinDetailModel.self, from: data)
            return detail
        }catch {
            throw error as? CoinApiError ?? .unkonwnerror(error: error)
        }
    }
    
    
    
    func fectCoinData()async throws -> [Coin]{
        let urlstring = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=20&page=1&sparkline=false&locale=en"
        
        guard let url = URL(string: urlstring) else {
            throw CoinApiError.requestfailed(description: "invalid URL")
        }
        let (data,response) = try await URLSession.shared.data(from: url)
        guard let httpresponse = response as? HTTPURLResponse else {
            throw CoinApiError.requestfailed(description: "invalid response")
        }
        guard httpresponse.statusCode == 200 else {
            throw CoinApiError.invalidstatuscode(statuscode: httpresponse.statusCode)
        }
        do {
            let coins = try JSONDecoder().decode([Coin].self, from: data)
            return coins
        }catch {
            throw error as? CoinApiError ?? .unkonwnerror(error: error)
        }
        
        
    }
}
