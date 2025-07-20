//
//  CoinsView.swift
//  CrptoProjectApi
//
//  Created by Rachit Sharma on 19/07/2025.
//

import SwiftUI

struct CoinsView: View {
    @StateObject var ViewModel = CoinViewModel()
    var body: some View {
        NavigationStack{
            List{
                ForEach(ViewModel.coin){Coin in
                    NavigationLink(value: Coin) {
                        Text(Coin.name)
                    }
                }
            }
            .navigationDestination(for: Coin.self) { coin in
                CoinsDetailView(coin: coin)
            }
        }
    }
}

#Preview {
    CoinsView()
}
