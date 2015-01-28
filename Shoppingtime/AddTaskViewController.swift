//
//  AddTaskViewController.swift
//  Shoppingtime
//
//  Created by Olivier Cappelle on 21/01/15.
//  Copyright (c) 2015 Olivier Cappelle. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var noteField: UITextField!
    @IBOutlet weak var dateAndTimeField: UITextField!
    @IBOutlet weak var dateAndTimePicker: UIDatePicker!
    @IBOutlet weak var dateAndTimeLabel: UILabel!
    var selectedDateAndTime: NSDate?
    
    //let tapRec = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dateAndTimePicker.addTarget(self, action: Selector("dateAndTimePickerChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        println(selectedDateAndTime)
        //tapRec.addTarget(self, action: "tappedDateAndTimeLabel")
        //dateAndTimeLabel.addGestureRecognizer(tapRec)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "dismissAndSave" {
            var task:Task
            if let tempDate = self.selectedDateAndTime {
                task = Task(title: titleField.text, dateAndTime: tempDate, note: noteField.text)
            }
            else {
                task = Task(title: titleField.text, note: noteField.text)
            }
            TaskStore.sharedInstance.add(task)
        }
    }
    
    func dateAndTimePickerChanged(datePicker:UIDatePicker) {
        var dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        selectedDateAndTime = datePicker.date
        var strDate = dateFormatter.stringFromDate(datePicker.date)
        dateAndTimeLabel.text = strDate
    }
    
    /*func tappedDateAndTimeLabel() {
        dateAndTimePicker.hidden = false
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
