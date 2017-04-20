//
//  ViewController.swift
//  pickerViewWithArray
//
//  Created by iFlame on 4/19/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    var name:String = ""
    var date:String = ""
    var month:String = ""
    var time:String = ""
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelMonth: UILabel!
    @IBOutlet weak var labelTime: UILabel!
    
    
    var Array = [    ["Sunil","Irafan","Sailesh","Bansi","Roshani","Payal","Milan","Arti","Avinash"],
                 ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"],
                     ["Jan","Feb","Mar","Apr","May","June","July","Aug","Sep","Oct","Nov","Des"],
                 ["8:00","8:30","9:00","9:30","10:00","10:30","11:00","11:30","12:00","12:30","13:00","13:30","14:00","14:30","15:00","15:30","16:00","16:30","17:00","17:30","18:00","18:30","19:00","19:30","20:00","20:30","21:00","21:30"]
                ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return Array.count
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView{
        
        
    let rowView = UILabel()
        
    _ = CGFloat(row) / CGFloat(Array.count)
        
    rowView.backgroundColor = UIColor(hue: 1, saturation: 1, brightness: 1, alpha: 1)
        
    let arrStr = NSAttributedString(string: Array[component][row] , attributes: [NSFontAttributeName: UIFont(name:"Georgia", size: 24)!,NSForegroundColorAttributeName: UIColor.blue] )
        
        rowView.attributedText = arrStr
        rowView.textAlignment = .center
        return rowView
    
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
        
        switch (component) {
        case 0:
            name = Array[component][row]
           labelName.text = name
            
            break;
        case 1:
            date = Array[component][row]
            labelDate.text = date
            break;
        case 2:
            month = Array[component][row]
            labelMonth.text = month
            break;
        case 3:
            time = Array[component][row]
            labelTime.text = time
            break;
        default:
            break;
            
        }
        
    }

    
    
    


    
}


