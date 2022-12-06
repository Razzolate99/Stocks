//
//  JSONDecoders.swift
//  Stocks
//
//  Created by Aaron Ward on 2022-12-06.
//

import Foundation


struct Quote: Decodable{
    let c: Double
    let d: Double
    let dp: Double
    let h: Double
    let l: Double
    let o: Double
    let pc: Double
    let t: Double
}


struct StockSymbolSearch: Decodable {
    let count: Int
    let results: [StockSymbol]
    
}

struct StockSymbol: Decodable, Hashable{
    let description: String
    let displaySymbol: String
    let symbol: String
    let type: String
}
