//
//  ConeValueStructure.swift
//  GeometryHelper
//
//  Created by Fiona ZHOU on 2023-11-16.
//

import SwiftUI

struct ConeSquareStructure: View {
    
    let coneSquareTitle: String
    let coneSquareTitle1: String
    let coneSquareVariable: String
    
    var body: some View {
        VStack {
            HStack {
                Text(coneSquareTitle)
                    .fontWeight(.semibold)
                Spacer()
            }
            HStack {
                Text(coneSquareTitle1)
                    .font(.footnote)
                Spacer()
            }
            HStack {
                Text(coneSquareVariable)
                    .font(.callout)
                Spacer()
            }
        }
    }
}

#Preview {
    ConeSquareStructure(coneSquareTitle: "ConeBaseArea", coneSquareTitle1: "Square units", coneSquareVariable: "10.0")
}
