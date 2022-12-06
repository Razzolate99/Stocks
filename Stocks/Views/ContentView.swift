//
//  ContentView.swift
//  Stocks
//
//  Created by Aaron Ward on 2022-12-04.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingStocksSearch: Bool = false
    var body: some View {
        VStack {
            HeaderView(showSheet: $isShowingStocksSearch)
                .padding()
            PortfolioCard()
                
            
            Spacer()
            
           WatchlistView()
                
        
            Spacer()
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .sheet(isPresented: $isShowingStocksSearch) {
            SearchStockView()
        }
        .onAppear{
            APIRequest.instance.getSymbolLoopup(searchQuery: "apple")
        }
    }






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
