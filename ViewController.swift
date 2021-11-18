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
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    //Egg-Buttons Link
    @IBAction func hardnessSelected(_ sender: UIButton) {
        //Save button title to constant
        //use as key value for calling cooking times
        let hardness = sender.currentTitle!
        
        //Printing fitting value to key from dictionary
        print(eggTimes[hardness]!)
        
        //Timer class being called (or created?) when button pressed
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    
    var counter = 60
    
    //Function w/ infinite loop, being called every second.
    //specified in Timer.scheduledTimer(...)s
    @objc func updateCounter() {
        if counter >= 0 {
            print("\(counter) seconds")
            counter -= 1
        }
    }
    
}
