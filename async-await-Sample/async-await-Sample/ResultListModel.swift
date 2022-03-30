//
//  ResultListModel.swift
//  async-await-Sample
//
//  Created by 木元健太郎 on 2022/03/28.
//

import Foundation

struct ResultListModel :Codable{
    var results:[Result]
}

struct Result :Codable{
    var gender:String?
    var name:Name
    var location:Location
}

struct Name :Codable {
    var title:String?
    var first:String?
    var last:String?
}

struct Location :Codable {
    var city:String?
    var state:String?
    var country:String?
}
