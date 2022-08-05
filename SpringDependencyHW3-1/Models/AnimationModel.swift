//
//  AnimationModel.swift
//  SpringDependencyHW3-1
//
//  Created by Ilya Kozhevnikov on 05.08.2022.
//

struct AnimationParameters {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let velocity: Float
    
    var description: String {
        "Preset: \(preset) \nCurve: \(curve) \nForce: \(String(format: "%.2f", force)) \nDuration: \(String(format: "%.2f", duration)) \nVelocity: \(String(format: "%.2f", velocity))"
    }
    
    static func getRandomParameters() -> AnimationParameters {
        AnimationParameters(
            preset: DataStore.shared.presets.shuffled().first?.rawValue ?? "",
            curve: DataStore.shared.curves.shuffled().first?.rawValue ?? "",
            force: Float.random(in: 1...5),
            duration: Float.random(in: 0.5...2),
            velocity: Float.random(in: 0...1)
        )
    }
}
