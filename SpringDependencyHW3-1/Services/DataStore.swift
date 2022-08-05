//
//  DataStore.swift
//  SpringDependencyHW3-1
//
//  Created by Ilya Kozhevnikov on 05.08.2022.
//

import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
 
