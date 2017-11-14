//
//  ForthViewController.swift
//  MultiTab
//
//  Created by Cyberjaya 4 iTrain on 14/11/2017.
//  Copyright © 2017 ada_yc. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController,
UIPickerViewDelegate, UIPickerViewDataSource
{
    
    @IBOutlet var myPicker: UIPickerView!
    
    var meals = ["nasi lemak", "cake", "chicken rice"]
    var drinks = ["milo", "teh tarik", "juice", "coke"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //How many columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    //How Many rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            
         return meals.count
        }
        else {
            return drinks.count
        }
        
        
    }
    
    //what to be displayed
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return meals[row]
        }
        else {
            return drinks[row]
        }
    }
    
    @IBAction func actionGetResult(_ sender: Any) {
        let firstColumnWhichRow = self.myPicker.selectedRow(inComponent: 0)
        let secondColumnWhichRow = self.myPicker.selectedRow(inComponent: 1)
        
        //Compare with the array to get result
       let selectedResultFirstColumn = self.meals[firstColumnWhichRow]
        
        let selectedResultSecondColumn = self.drinks[secondColumnWhichRow]

        //Alert box to show the Selected Result
        //Combine the result for later display
        let myMessage = " \(selectedResultFirstColumn) with  \(selectedResultSecondColumn) is the best match"
        
        
        //
        let myAlert = UIAlertController(title: "Selected Result" , message: myMessage, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title:"okay", style: .default, handler: nil)
       myAlert.addAction(okButton)
        
        present(myAlert, animated: true, completion: nil)
        
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
