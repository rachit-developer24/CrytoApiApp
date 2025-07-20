//
//  CoinViewModel.swift
//  CrptoProjectApi
//
//  Created by Rachit Sharma on 19/07/2025.
//

import Foundation
class CoinViewModel:ObservableObject {
    @Published var error : String?
    @Published var  coin = [Coin]()
    
    let service = CoinServiceModel()
    init(){
        Task {
            await fetchdata()
        }
    }
    
    func fetchdata()async{
        do {
            self.coin = try await service.fectCoinData()
        }catch {
            self.error = error.localizedDescription
        }
    }
}
