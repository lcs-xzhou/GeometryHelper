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
        NavigationStack {
            
            HStack {
                Spacer()
            }
            
            VStack {
                
                HStack {
                    
                    Text("0")
                    
                    Slider(value: $currentCircle.radius, in: 0...100)
                    
                    Text("100")
                }
                
                StructureView(graphText: "Radius", graphValues: currentCircle.radius)
                    .padding(.vertical)
                
                StructureView(graphText: "Diameter", graphValues: currentCircle.diameter)
                
                StructureView(graphText: "Perimeter", graphValues: currentCircle.perimeter)
                    .padding(.vertical)
                
                VStack {
                    HStack {
                        Text("Area")
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    HStack {
                        Text("(square units)")
                            .font(.caption)
                        Spacer()
                    }
                    HStack {
                        Text("\(currentCircle.area)")
                            .font(.callout)
                        Spacer()
                    }
                }
                .padding(.horizontal)
            }
            .padding()
            .navigationTitle("Circle")
        }
    }
}

#Preview {
    CircleView()
}
