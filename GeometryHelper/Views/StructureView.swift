//
//  StructureView.swift
//  GeometryHelper
//
//  Created by Fiona ZHOU on 2023-11-16.
//

import SwiftUI

struct StructureView: View {
    
    let graphText: String
    let graphValues: Double
    
    var body: some View {
        
        VStack {
            HStack {
                Text(graphText)
                    .fontWeight(.semibold)
                Spacer()
            }
            
            HStack {
                Text("\(graphValues)")
                    .font(.callout)
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    StructureView(graphText: "Radius", graphValues: 10.0)
}
