//
//  ConeView.swift
//  GeometryHelper
//
//  Created by Fiona ZHOU on 2023-11-16.
//

import SwiftUI

struct ConeView: View {
    
    // MARK: Stored properties
    @State var currentCone = Cone(radius1: 30.0, slant: 25.0, height: 20.0)
    
    // MARK: Computed properties
    var body: some View {
        VStack {
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
            .padding()
            
            VStack {
                HStack {
                    Text("Radius (r)")
                        .fontWeight(.semibold)
                    Spacer()
                }
                .padding(.horizontal)
                HStack {
                    Text("0")
                    Slider(value: $currentCone.radius1, in: 1...100)
                    Text("100")
                }
                .padding(.horizontal)
            }
            
            VStack {
                HStack {
                    Text("Height (h)")
                        .fontWeight(.semibold)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top)
                HStack {
                    Text("0")
                    Slider(value: $currentCone.height, in: 1...100)
                    Text("100")
                }
                .padding(.horizontal)
            }
            
            VStack {
                HStack {
                    Text("Slant (s)")
                        .fontWeight(.semibold)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top)
                HStack {
                    Text("0")
                    Slider(value: $currentCone.slant, in: 1...100)
                    Text("100")
                }
                .padding(.horizontal)
            }
            
            List {
                ConeValueStructure(titleValue: "Radius", coneVariable: "\(currentCone.radius1)")
                    .padding(.horizontal)
            
                ConeValueStructure(titleValue: "Height", coneVariable: "\(currentCone.height)")
                    .padding(.horizontal)
            
                ConeValueStructure(titleValue: "Slant", coneVariable: "\(currentCone.slant)")
                    .padding(.horizontal)
                
                ConeSquareStructure(coneSquareTitle: "Cone Base Area", coneSquareTitle1: "(squared units)", coneSquareVariable: "\(currentCone.coneBaseArea)")
                    .padding(.horizontal)
                
                ConeSquareStructure(coneSquareTitle: "Cone Lateral Surface Area", coneSquareTitle1: "(squared units)", coneSquareVariable: "\(currentCone.coneLateralSurfaceArea)")
                    .padding(.horizontal)
                
                ConeSquareStructure(coneSquareTitle: "Cone Total Area", coneSquareTitle1: "(squared units)", coneSquareVariable: "\(currentCone.coneTotalArea)")
                    .padding(.horizontal)
                
                ConeSquareStructure(coneSquareTitle: "Cone Volume", coneSquareTitle1: "(cube units)", coneSquareVariable: "\(currentCone.coneVolume)")
                    .padding(.horizontal)
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .listStyle(.plain)
        }
    }
}

#Preview {
    ConeView()
}
