//
//  SearchStockView.swift
//  Stocks
//
//  Created by Aaron Ward on 2022-12-06.
//

import SwiftUI

struct SearchStockView: View {
    @State private var searchSymbol: String = ""
    var body: some View {
        VStack{
            TextField("Stock Ticker Symbol", text: $searchSymbol)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .stroke(Color.darkBlue, lineWidth: 1)
            
        ).padding()
            .textInputAutocapitalization(.never)
        Divider()
        
        StockCell(stock: "APPL", description: "Apple Computers")
        Divider()
        StockCell(stock: "APPL", description: "Apple Computers")
        Divider()

        StockCell(stock: "APPL", description: "Apple Computers")
        Divider()
      

        
        Spacer()
    }
}

struct SearchStockView_Previews: PreviewProvider {
    static var previews: some View {
        SearchStockView()
    }
}
