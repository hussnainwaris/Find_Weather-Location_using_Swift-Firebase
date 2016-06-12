//
//  ViewController.swift
//  FireBaseWeatherAndLocation
//
//  Created by MacBook Pro on 07/04/2016.
//  Copyright © 2016 apphouse. All rights reserved.
//

import Firebase

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ref = Firebase(url: "https://burning-heat-6452.firebaseio.com/")
        
        print(ref.key)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

