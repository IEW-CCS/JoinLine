//
//  TestStruct.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/29.
//

import Foundation

struct OrderReport: Codable, Hashable {
    var name: String = ""
    var product: String = ""
    var content: String = ""
    var quantity: Int = 0
    var price: Double = 0.0
    var comments: String = ""
}

struct ActivityReport: Codable, Hashable {
    var name: String = ""
    var type1: String = ""
    var type2: String = ""
    var type3: String = ""
    var price: Double = 0.0
    var comments: String = ""
}
