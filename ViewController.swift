//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    //boiling times in Dictionary form
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var secondsRemaining = 60
    
    //Egg-Buttons Link
    @IBAction func hardnessSelected(_ sender: UIButton) {
        //Save button title to constant
        //use as key value for calling cooking times
        let hardness = sender.currentTitle!
        
        //update to corresponding cooking times in Dict
        secondsRemaining = eggTimes[hardness]!
                
        //Timer class being called (or created?) when button pressed
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    //Function w/ infinite loop, being called every second.
    //specified in Timer.scheduledTimer(...)
    @objc func updateCounter() {
        if secondsRemaining >= 0 {
            print("\(secondsRemaining) seconds")
            secondsRemaining -= 1
        }
    }
    
}
