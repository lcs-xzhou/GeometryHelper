//
//  ConeValueStructure.swift
//  GeometryHelper
//
//  Created by Fiona ZHOU on 2023-11-16.
//

import SwiftUI

struct ConeValueStructure: View {
    
    let titleValue: String
    let coneVariable: String
    
    var body: some View {
        VStack {
            HStack {
                Text(titleValue)
                    .fontWeight(.semibold)
                Spacer()
            }
            HStack {
                Text(coneVariable)
                    .font(.callout)
                Spacer()
            }
        }
    }
}

#Preview {
    ConeValueStructure(titleValue: "Radius", coneVariable: "10.0")
}
