//
//  UsersView.swift
//  RandomUsers
//
//  Created by Luiz Felipe Véras on 30/09/22.
//

import SwiftUI

struct UsersView: View {
    @StateObject var userData = UserData()
    var body: some View {
        NavigationView{
            List(userData.users){ user in
                Text(user.fullName)
            }
        }   .navigationTitle("Random Users")
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
