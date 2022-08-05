//
//  AnimationModel.swift
//  SpringDependencyHW3-1
//
//  Created by Ilya Kozhevnikov on 05.08.2022.
//
import SpringAnimation

struct AnimationParameters {
    var preset: String
    var curve: String
    var force: Float
    var duration: Float
    var velocity: Float
    
    static func getRandomParameters() -> AnimationParameters {
        AnimationParameters(
            preset: AnimationPreset.allCases.shuffled().first?.rawValue ?? "",
            curve: AnimationCurve.allCases.shuffled().first?.rawValue ?? "",
            force: Float.random(in: 1...5),
            duration: Float.random(in: 0.5...2),
            velocity: Float.random(in: 0...1)
        )
    }
}
