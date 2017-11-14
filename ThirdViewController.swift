//
//  ThirdViewController.swift
//  MultiTab
//
//  Created by Cyberjaya 4 iTrain on 14/11/2017.
//  Copyright © 2017 ada_yc. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var myDatePicker: UIDatePicker!
    
    @IBAction func buttonPressed(_ sender: Any) {
        //Setting up the date format
        let dateFormatter = DateFormatter ()
        dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
        
        //Convert Date to String
        let selectedDate = dateFormatter.string(from: self.myDatePicker.date)
        
        //Display the Message as Alert Box.
        let myAlert = UIAlertController(title:"Selected Date", message: selectedDate, preferredStyle: .alert)
        
        //Create a Okay button for the alert box
        let okButton = UIAlertAction(title: "okay", style: .default, handler: nil)
        
        //Add the button to the alert box
        myAlert.addAction(okButton)
        
        //Show the alert box
        present(myAlert, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
