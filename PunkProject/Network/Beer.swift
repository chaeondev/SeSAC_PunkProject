//
//  Beer.swift
//  PunkProject
//
//  Created by Chaewon on 2023/09/22.
//

import Foundation

struct Beer: Decodable {
    let results: [BeerElement]
}

struct BeerElement: Decodable {
    let id: Int
    let name, tagline, description: String
    let image_url: String
    let food_pairing: [String]
    let brewers_tips: String
}
