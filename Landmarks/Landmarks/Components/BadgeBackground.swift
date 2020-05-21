//
//  BadgeBackground.swift
//  Landmarks
//
//  Created by Backpack Media on 5/19/20.
//  Copyright © 2020 Backpack Media. All rights reserved.
//

import SwiftUI

struct BadgeBackground: View {
    static let gradientStart = Color(red: 239.0/255, green: 120.0/255, blue: 221.0/255)
    static let gradientEnd = Color(red: 239.0/255, green: 172.0/255, blue: 120.0/255)
    
    var body: some View {
            GeometryReader { geometry in
                Path { path in
                        var width: CGFloat = min(geometry.size.width, geometry.size.height)
                    let height = width
                    let xScale: CGFloat = 0.832
                    let xOffset = (width * (1.0 - xScale))/2.0
                    width *= xScale
                    path.move(
                        to: CGPoint(
                            x: xOffset + width * 0.95,
                            y: height * (0.20 + HexagonParameters.adjustment)
                        )
                    )
                    
                    HexagonParameters.points.forEach {
                        path.addLine(to: .init (
                            x: width * $0.useWidth.0 * $0.xFactors.0,
                            y: height * $0.useHeight.0 * $0.yFactors.0
                            )
                        )
                    }
                }
                    .fill(LinearGradient(
                        gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                        startPoint: .init(x: 0.5, y: 0),
                        endPoint: .init(x: 0.5, y: 0.6)
                    ))
                    .aspectRatio(1, contentMode: .fit)
            }
        }
    }

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
