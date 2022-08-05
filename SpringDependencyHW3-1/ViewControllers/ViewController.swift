//
//  ViewController.swift
//  SpringDependencyHW3-1
//
//  Created by Ilya Kozhevnikov on 04.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet private weak var animationView: SpringView!
    @IBOutlet private weak var infoLabel: UILabel!
    
    @IBOutlet private weak var nextAnimationButton: UIButton!
    
    private var animation = AnimationParameters.getRandomParameters()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
        
        infoLabel.text = animation.description
    }
    
    @IBAction private func animatePressed() {
        setupAnimation()
        infoLabel.text = animation.description
        animationView.animate()
        getNextPreset()
    }
    
    private func setupAnimation() {
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.velocity = CGFloat(animation.velocity)
    }
    
    private func getNextPreset() {
        animation = AnimationParameters.getRandomParameters()
        nextAnimationButton.setTitle("Run \(animation.preset)", for: .normal)
    }

}

