//
//  ViewController.swift
//  SpringDependencyHW3-1
//
//  Created by Ilya Kozhevnikov on 04.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var velocityLabel: UILabel!
    
    @IBOutlet weak var nextAnimationButton: UIButton!
    
    private var animation = AnimationParameters.getRandomParameters()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
        
        updateInfoOnLabels()
    }
    
    @IBAction func animatePressed() {
        setupAnimation()
        updateInfoOnLabels()
        animationView.animate()
        getNextPreset()
    }
    
    func setupAnimation() {
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.velocity = CGFloat(animation.velocity)
    }
    
    func updateInfoOnLabels() {
        animationLabel.text = "Preset: " + animation.preset
        curveLabel.text = "Curve: " + animation.curve
        forceLabel.text = "Force: " + animation.force.formatted()
        durationLabel.text = "Duration: " + animation.duration.formatted()
        velocityLabel.text = "Velocity: " + animation.velocity.formatted()
    }
    
    func randomiseAnimationParameters() {
        animationView.curve = AnimationCurve.allCases.shuffled().first?.rawValue ?? ""
        animationView.force = CGFloat.random(in: 1...5)
        animationView.duration = CGFloat.random(in: 0.5...2)
        animationView.velocity = CGFloat.random(in: 0...1)
    }
    
    func getNextPreset() {
        animation = AnimationParameters.getRandomParameters()
        nextAnimationButton.setTitle("Run \(animation.preset)", for: .normal)
    }

}

