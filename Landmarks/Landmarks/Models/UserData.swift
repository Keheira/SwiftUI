//
//  UserData.swift
//  Landmarks
//
//  Created by Backpack Media on 5/18/20.
//  Copyright © 2020 Backpack Media. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}

