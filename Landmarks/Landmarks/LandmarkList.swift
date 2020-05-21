//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Backpack Media on 5/18/20.
//  Copyright © 2020 Backpack Media. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favs only")
                }
                ForEach (userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark).environmentObject(self.userData)){
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
        .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(UserData())
    }
}
