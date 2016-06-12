//
//  ViewController.swift
//  FireBaseWeatherAndLocation
//
//  Created by MacBook Pro on 07/04/2016.
//  Copyright © 2016 apphouse. All rights reserved.
//

import Firebase

class ViewController: UIViewController {

 let ref = Firebase(url: "https://burning-heat-6452.firebaseio.com/")
    
    @IBOutlet weak var showData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func saveData(sender: AnyObject) {
        
       
        
        let post1 = ["id":1,"longitude": 72.3311, "latitude": 12.2212,"weather":"this is it"]
        

        
        let usersRef = ref.childByAppendingPath("news")
        
     

        usersRef.setValue(post1)
        
       
        
       
        
    }
    
    @IBAction func getData(sender: AnyObject) {
    
        
        ref.queryOrderedByChild("news").observeEventType(.ChildAdded, withBlock: { snapshot in
             print("hello")
            
            if let longitude = snapshot.value["longitude"] as? Double {
                print("\(snapshot.key) : \(longitude) ")
                dispatch_async(dispatch_get_main_queue(),
                    {
                        self.showData.text = "\(longitude)"
                        
                })
            }
        })
        
       
            
        
            
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

