//
//  UserData.swift
//  Blog
//
//  Created by iraniya on 16/07/20.
//  Copyright © 2020 iraniya. All rights reserved.
//


import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
