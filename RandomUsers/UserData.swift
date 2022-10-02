//
//  UserData.swift
//  RandomUsers
//
//  Created by Luiz Felipe Véras on 30/09/22.
//

import Foundation

@MainActor
class UserData: ObservableObject{
    @Published var users: [User] = []
    
    init(){
        Task {
            await loadUsers()
        }
    }
    
    func loadUsers() async {
        do{
            let users = try await UserFetchingClient.getUsers()
            self.users = users
        } catch {
            print(error)
        }
    }
}
