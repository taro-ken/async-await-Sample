//
//  PersonLoader.swift
//  async-await-Sample
//
//  Created by 木元健太郎 on 2022/03/28.
//

import Foundation

enum PersonError:Error {
    case serverError
    case noData
}

final class PersonLoader {

    func asyncLoad() async throws -> [Result] {  // ----------（1）
        let url = URL(string:"https://randomuser.me/api")!
        let (data, response) = try await URLSession.shared.data(from: url)  // ----------（2）
        
        guard let decoded = try? JSONDecoder().decode(ResultListModel.self, from: data) else { throw PersonError.noData }
        let result = decoded.results
        return result
    }
}
