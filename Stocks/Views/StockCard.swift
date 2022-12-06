//
//  StockCard.swift
//  Stocks
//
//  Created by Aaron Ward on 2022-12-06.
//

import SwiftUI

struct StockCard: View {
    var body: some View {
        VStack {
            VStack {
              
            
            //Stock cards
            VStack{
                HStack{
                    Image(systemName: "appletv.fill")
                    //.resizable()
                    //.aspectRatio(contentMode: .fit)
                        .font(.system(size: 50))
                    
                    VStack{
                        Text("APPL")
                            .font(.title3)
                            .bold()
                        Text("Apple Inc")
                            .foregroundColor(.gray)
                            .lineLimit(1)
                            .truncationMode(.tail)
                    }
                    Spacer()
                    Text("1.2%")
                        .foregroundColor(.lightGreen)
                        .bold()
                        .font(.title)
                }
                Spacer()
                HStack{
                    Text("$137.5")
                        .bold()
                        .font(.title)
                    
                    Spacer()
                    LineChart(data: StockMockData.apple.normalizedValues)
                        .stroke(Color.lightGreen, lineWidth: 1.5)
                }
                
            }
            .padding(.horizontal)
            .padding(.vertical)
            .padding(5)
            .frame(height: UIScreen.main.bounds.height / 4)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.gray)
            )
            Spacer()
        } 

    }
}

struct StockCard_Previews: PreviewProvider {
    static var previews: some View {
        StockCard()
    }
}
}
