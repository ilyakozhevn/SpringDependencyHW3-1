//
//  AnimationModel.swift
//  SpringDependencyHW3-1
//
//  Created by Ilya Kozhevnikov on 05.08.2022.
//

struct AnimationParameters {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let velocity: Double
    
    var description: String {
        """
        Preset: \(preset)
        Curve: \(curve)
        Force: \(String(format: "%.2f", force))
        Duration: \(String(format: "%.2f", duration))
        Velocity: \(String(format: "%.2f", velocity))
        """
    }
    
    static func getRandomParameters() -> AnimationParameters {
        AnimationParameters(
            preset: DataStore.shared.presets.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 1...5),
            duration: Double.random(in: 0.5...2),
            velocity: Double.random(in: 0...1)
        )
    }
}
