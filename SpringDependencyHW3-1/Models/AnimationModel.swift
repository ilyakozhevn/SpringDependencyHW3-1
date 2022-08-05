//
//  AnimationModel.swift
//  SpringDependencyHW3-1
//
//  Created by Ilya Kozhevnikov on 05.08.2022.
//

struct AnimationParameters {
    var preset: String
    var curve: String
    var force: Float
    var duration: Float
    var velocity: Float
    
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
