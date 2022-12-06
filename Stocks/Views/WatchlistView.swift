//
//  WatchlistView.swift
//  Stocks
//
//  Created by Aaron Ward on 2022-12-06.
//

import SwiftUI

struct WatchlistView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Watchlist")
                    .font(.title)
                    .bold()
                    .foregroundColor(.darkBlue)
                Spacer()
            }
            VStack {
                ScrollView {
                    StockCard()
                    StockCard()
                    StockCard()
                }
                
            }
            .padding(3)

         
        }
    }
}

struct WatchlistView_Previews: PreviewProvider {
    static var previews: some View {
        WatchlistView()
    }
}
