//
//  CoinDetailModel.swift
//  CrptoProjectApi
//
//  Created by Rachit Sharma on 20/07/2025.
//

import Foundation
class CoinDetailViewModel: ObservableObject{
    @Published var coindata : CoinDetailModel?
    let service = CoinServiceModel()
    let coinid : String
    init(coinid:String){
        self.coinid = coinid
        Task {
            await getCoinDetail()
        }
     
    }
    
    func getCoinDetail()async{
        do {
            let detailsdata = try await service.fetchCoinDetail(id: coinid)
            self.coindata = detailsdata
        }catch{
            var error =  error.localizedDescription
        }
        
    }
}
