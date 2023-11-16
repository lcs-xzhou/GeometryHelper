//
//  ConeView.swift
//  GeometryHelper
//
//  Created by Fiona ZHOU on 2023-11-16.
//

import SwiftUI

struct ConeView: View {
    
    // MARK: Stored properties
    @State var currentCone = Cone(radius1: 6.0, slant: 5.0, height: 4.0)
    
    // MARK: Computed properties
    var body: some View {
        HStack {
            VStack {
                Text("Cone")
                    .font(.largeTitle)
                Spacer()
                    .frame(height: 250)
            }
            VStack {
                Image("Cone")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 230)
            }
        }

    }
}

#Preview {
    ConeView()
}
