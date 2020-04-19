//
//  ContentView.swift
//  DynamicListSwiftUI
//
//  Created by iraniya on 19/04/20.
//  Copyright © 2020 iraniya. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    var id: Int
    let userName, message : String
}

struct ContentView: View {
    
    let users: [User] = [
        .init(id: 0, userName: "Naynesh", message: "Life is short, Break the rule, Forgive quickly, Laugh unconditional, Spread smiles, Live life, Die young, Be free, Be wild"),
        .init(id: 1,userName: "Jaydeep", message: "Hi Naynesh hows your quarantine going"),
        .init(id: 2,userName: "Nidhi", message: "WiFi+Food+Globe Trotting=PERFECTION ✈️🌌"),
        .init(id: 3,userName: "Nirlep", message: "Khwahishein bhi ab kuch itni hai is nadan dil ki..\nKe har khwahish puri hone par bhi ek gamm sa reh jata hai..."),
        .init(id: 4,userName: "Naynesh", message: "I am cute and awesome"),
        .init(id: 5,userName: "Naynesh", message: "Ok this is me again "),
        .init(id: 6,userName: "Bhavana", message: "Some this big comming stay tune")
    ]
    
    var body: some View {
        NavigationView {
            List {
                Text("Users").font(.largeTitle)
                ForEach(users) { user in
                    UserRow(user: user)
                }
            }.navigationBarTitle(Text("Dynamic List"))
        }
    }
}

struct UserRow: View {
    let user: User
    var body: some View {
        HStack (alignment: .top,spacing: 10) {
            Image(user.userName)
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black,lineWidth: 2))
                .frame(width: 50.0, height: 50.0, alignment:.center)
            VStack (alignment: .leading) {
                Text("\(user.userName)").font(.headline )
                Text("\(user.message)").font(.subheadline )
            }.padding(.leading, 8)
        }.padding(.init(top: 12, leading: 0, bottom: 12, trailing: 0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
