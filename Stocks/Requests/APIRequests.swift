//
//  APIRequests.swift
//  Stocks
//
//  Created by Aaron Ward on 2022-12-06.
//

import Foundation

class APIRequest {
    static let instance = APIRequest()
    
    /// https://finnhub.io/api/v1/quote?symbol=AAPL&token=ce7krsaad3i4pjr4n010ce7krsaad3i4pjr4n01g
    // Variables api
    private var url = "https://finnhub.io/api/v1/"
    
    private var token = "&token=ce7krsaad3i4pjr4n010ce7krsaad3i4pjr4n01g"
    
    // public since we need to call from another file
    public func getSymbolQuote(symbol: String){
        let query: String = "quote?symbol=\(symbol)"
        let url = URL(string: url + query + token)
        
        if let url = url {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error{
                    // If we have an error here
                    print("error getting quote  \(error)")
                    return
                }
                
                guard let quoteData = data else{
                    print("symbol search data not valid")
                    return
                }
                
                let returnedQuote = try? JSONDecoder().decode(Quote.self, from: quoteData)
                
                print(returnedQuote ?? "failed")
            }
            task.resume()
        }
    }
    
    
    public func getSymbolLoopup(searchQuery:String ){
        let query: String = "search?q=\(searchQuery)"
        
        let url = URL(string: url + query + token)
        
        if let url = url {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error{
                    print("error getting quote  \(error)")
                    return
                } else{
                    guard let searchData = data else {
                        print("symbol search not found ")
                        return
                    }
                    let returnedSymbols = try? JSONDecoder().decode(StockSymbolSearch.self,from: searchData)
                    print(returnedSymbols)
                }
            }
            task.resume()
        }
        
    }
}
