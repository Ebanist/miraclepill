//
//  ViewController.swift
//  MiraclePill
//
//  Created by Adam Stolarczyk on 19.12.2016.
//  Copyright © 2016 Adam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryText: UILabel!
    @IBOutlet weak var countryEnterField: UITextField!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    
    let states = ["Alaska", "Alabama", "Arkansas", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden = false
        
        countryText.isHidden = true
        countryEnterField.isHidden = true
        buyNowBtn.isHidden = true
        
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        
        countryText.isHidden = false
        countryEnterField.isHidden = false
        buyNowBtn.isHidden = false
    }

}

