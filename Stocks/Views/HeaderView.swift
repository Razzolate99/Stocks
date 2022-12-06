//
//  HeaderView.swift
//  Stocks
//
//  Created by Aaron Ward on 2022-12-04.
//

import SwiftUI

struct HeaderView: View {
    @Binding var showSheet: Bool
    var body: some View {
        HStack{
            Text("My Stocks")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color.darkBlue)
                
            Spacer()
            Button(action: {
                // ACTION OR WHAT THE BUTTON IS DOING
                showSheet.toggle()
            }){
                // UI OR VIEW
                Image(systemName: "magnifyingglass.circle.fill")
                    .accentColor(Color.darkBlue)
                    .font(.system(size: 40))
            }

        }
    }
}

//struct HeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderView()
//            .padding()
//    }
//}
