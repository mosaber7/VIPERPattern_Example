//
//  Model.swift
//  VIPERPattern_example
//
//  Created by Saber on 01/09/2021.
//

import Foundation


struct Model: Codable {
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case name
    }
}
