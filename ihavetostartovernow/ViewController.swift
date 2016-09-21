//
//  ViewController.swift
//  ihavetostartovernow
//
//  Created by orlando grant on 9/19/16.
//  Copyright © 2016 antonio orlando. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    
     let parishes = ["KINGSTON","ST.JAMES","TRELAWNY","CLARENDON","PORTLAND","MANCHESTER","ST.ANN","HANOVER","WESTMORLAND"]
    @IBOutlet weak var miraclepill: UIImageView!
    @IBOutlet weak var miraclepillslbl: UILabel!
    @IBOutlet weak var moneylbl: UILabel!
    @IBOutlet weak var dividerline: UIView!
    @IBOutlet weak var fullname: UILabel!
    @IBOutlet weak var nametxt: UITextField!
    @IBOutlet weak var addi: UILabel!
    @IBOutlet weak var statetxt: UITextField!
    @IBOutlet weak var additxt: UITextField!
    @IBOutlet weak var state: UILabel!

    @IBOutlet weak var success: UIImageView!
    @IBOutlet weak var zipcodetxt: UITextField!
    @IBOutlet weak var zipcode: UILabel!
    @IBOutlet weak var countrytxt: UITextField!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var parishpicker: UIPickerView!
    @IBOutlet weak var parishBTN: UIButton!
    @IBOutlet weak var BUynowBtn: UIButton!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        parishpicker.dataSource = self
        parishpicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func WHenparishBTNpressed(_ sender: AnyObject) {
        parishpicker.isHidden = false
        country.isHidden = true
        countrytxt.isHidden = true
        zipcodetxt.isHidden = true
        zipcode.isHidden = true
        BUynowBtn.isHidden = true
    }
    @IBAction func whenbuynow(_ sender: AnyObject) {
        miraclepill.isHidden = true
        miraclepillslbl.isHidden = true
        moneylbl.isHidden = true
        dividerline.isHidden = true
        fullname.isHidden = true
        nametxt.isHidden = true
        state.isHidden = true
        addi.isHidden = true
        additxt.isHidden = true
        statetxt.isHidden = true
        success.isHidden = false
        zipcode.isHidden = true
        zipcodetxt.isHidden = true
        country.isHidden = true
        parishpicker.isHidden = true
        countrytxt.isHidden = true
        parishBTN.isHidden = true
        BUynowBtn.isHidden = true
        
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return parishes.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       return  parishes[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        parishBTN.setTitle(parishes[row], for: UIControlState())
        parishpicker.isHidden = true
    }

}

