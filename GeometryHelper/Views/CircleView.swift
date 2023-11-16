//
//  CircleView.swift
//  GeometryHelper
//
//  Created by Fiona ZHOU on 2023-11-16.
//

import SwiftUI

struct CircleView: View {
    
    // MARK: Stored properties
    @State var currentCircle = Circle(radius: 10.0)
    
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            Text("\(currentCircle.radius)")
                .font(.largeTitle)
            
            Slider(value: $currentCircle.radius, in: 0...100)
        }
        .padding()
    }
}

#Preview {
    CircleView()
}
