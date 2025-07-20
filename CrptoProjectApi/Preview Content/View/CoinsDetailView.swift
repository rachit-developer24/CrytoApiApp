//
//  CoinsDetailView.swift
//  CrptoProjectApi
//
//  Created by Rachit Sharma on 19/07/2025.
//

import SwiftUI

struct CoinsDetailView: View {
    let coin: Coin
    @ObservedObject var ViewModel : CoinDetailViewModel
    init(coin:Coin){
        self.coin = coin
        self.ViewModel = CoinDetailViewModel(coinid: coin.id)
    }
    var body: some View {
        if let details = ViewModel.coindata{
            VStack{
                Text("\(details.name)").font(.headline)
                Text(details.description.text)
            }
        }
           
    }
      
}
    

//#Preview {
  //  CoinsDetailView(coin: Coin(id: "btc", name: "bitcoin", symbol: ""))
//}
