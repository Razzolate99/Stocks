//
//  PortfolioCard.swift
//  Stocks
//
//  Created by Aaron Ward on 2022-12-04.
//

import SwiftUI

struct PortfolioCard: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Portfolio Value")
                .foregroundColor(Color.gray)
                .font(.title2)
                .padding(.top)
            
            HStack(alignment: .top){
                Text("$1323")
                    .bold()
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                Text("2.1%")
                    .foregroundColor(Color.lightGreen)
                    .font(.title3)
            }
            
            
            
            HStack{
                Button(action: {
                    
                }) {
                    Text("Deposit")
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                        .padding(.horizontal)
                        .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.lightGreen)
                        )
                    
                }
                
                
                
                Button(action: {
                    
                }) {
                    Text("Withdrawl")
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                        .padding(.horizontal)
                        .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray)
                        )
                    
                }
                
            }
            Spacer()
        }
        
        .frame(height: UIScreen.main.bounds.height / 4)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.darkBlue)
        )
    }
}

struct PortfolioCard_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioCard()
    }
}
