//
//  CircleImage.swift
//  Landmarks
//
//  Created by Backpack Media on 5/18/20.
//  Copyright © 2020 Backpack Media. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
        .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("TurtleRock"))
    }
}
