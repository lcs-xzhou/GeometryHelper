//
//  Cone.swift
//  GeometryHelper
//
//  Created by Fiona ZHOU on 2023-11-16.
//

import Foundation

struct Cone {
    
    // MARK: Stored properties
    var radius1: Double
    var slant: Double
    var height: Double
    
    // MARK: Computed properties
    var coneBaseArea: Double {
        return 1 * Double.pi * radius1 * radius1
    }
    
    var coneLateralSurfaceArea: Double {
        return 1 * Double.pi * radius1 * slant
    }
    
    var coneTotalArea: Double {
        return 1 * Double.pi * radius1 * radius1 + 1 * Double.pi * radius1 * slant
    }
    
    var coneVolume: Double {
        return 1 / 3 * 1 * Double.pi * radius1 * radius1 * height
    }
}
