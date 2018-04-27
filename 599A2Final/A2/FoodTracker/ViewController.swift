//
//  ViewController.swift
//  FoodTracker
//
//  Created by Jane Appleseed on 10/17/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate {

    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField! //"enter your name"
    @IBOutlet weak var numberTextField: UITextField! //"enter your number"
    
    @IBOutlet weak var mealNameLabel: UILabel!  //"your name is /(mealNameLabel)
    @IBOutlet weak var numberBoxLabel: UILabel! //"your number is /(numberBoxLabel)"
    
    @IBOutlet weak var nameBoxLabel: UILabel!
    @IBOutlet weak var enterNumBoxLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!    //slider
    @IBOutlet weak var sliderLabel: UILabel!    //slider label with the number on top of slider
    
    @IBOutlet weak var lastButton: UIButton!    //last button is the one that appears at the end
    
    @IBOutlet weak var switchOne: UISwitch!
    @IBOutlet weak var switchTwo: UISwitch!
   
    //function that  updates the label of the number from slider
    @IBAction func sliderValueChange(_ sender: Any) {
        let currentValue = Int(slider.value)
        sliderLabel.text = "\(currentValue)"
    }
    
    //this function doesn't do anything but can't compile without it
    @IBAction func segmentControl(_ sender: Any) {
    }
   
    

    //Set number button
    @IBAction func setNumberButton(_ sender: Any) {
        numberBoxLabel.text = "The entered number is: " + numberTextField.text!
        _ = numberFieldShouldReturn(numberTextField)
        
        if numberTextField.text == "" {
            numberBoxLabel.text = "Number field has been cleared"
        }
    }
  
    //Segmented control button of "Switches/Button"
    //if clicked on "Button" makes switches dissapear and the last button appears on screen
    @IBAction func toggle(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            
        }
        else {
            switchOne.isHidden = true
            switchTwo.isHidden = true
            lastButton.isHidden = false
        }
    }
    
    //this function will make call the pop up screen to appear
    @IBAction func doSomethingButton(_ sender: Any) {
        createAlert(title: "Something was done", message: "Everything's fine. You can breathe easy now and continue")
        
    }
    //Alert function with title and message
    func createAlert (title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
        numberTextField.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    //these are all the label boxes for the name and number

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
 
    func numberFieldShouldReturn(_ numberField: UITextField) -> Bool {
        //hide the keyboard
        numberField.resignFirstResponder()
        return true
    }
    
    //instance error keeps happening
    //don't know how to fix it, but program still runs
    //comp sci am i right??
    //function displays "hello name" otherwise cleared message
    @IBAction func textFieldDidEndEditing(_ sender: Any) {
        mealNameLabel.text = "Hello " + nameTextField.text!
        
        _ = textFieldShouldReturn(nameTextField)
        
        if nameTextField.text == "" {
            mealNameLabel.text = "Name field has been cleared"
        }
    }

    //function that gets number and displays it
    //otherwise cleared message appear
    
    @IBAction func numberFieldDidEndEditing(_ sender: Any) {
        numberBoxLabel.text = "The entered number is: " + numberTextField.text!
        
        _ = numberFieldShouldReturn(numberTextField)
        
        if numberTextField.text == "" {
            numberBoxLabel.text = "Number field has been cleared"
        }
    }
    
}

