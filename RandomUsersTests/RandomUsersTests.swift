//
//  RandomUsersTests.swift
//  RandomUsersTests
//
//  Created by Luiz Felipe Véras on 30/09/22.
//

import XCTest
@testable import RandomUsers

final class RandomUsersTests: XCTestCase {

    private func getTestJSONData() -> Data{
        guard let path = Bundle.main.path(forResource: "randomUsers", ofType: "json") else {
            fatalError("randomUser.json not found")
        }
        let internalURL = URL(fileURLWithPath: path)
        return try! Data(contentsOf: internalURL)
    }
    
    func testsUserModel() throws {
        let json = getTestJSONData()
        do {
            _ = try JSONDecoder().decode(Response.self, from: json)
        }
        catch {
            XCTFail("Failed to decode JSON into the model: \(error)")
        }
    }
}
