//
//  EventDateVC.swift
//  EventCountdown
//
//  Created by Aaron Bradley on 4/19/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import UIKit

protocol EventDateVCDelegate: class {
  func eventWasSet(event: Event)

}

class EventDateVC: UIViewController, UINavigationBarDelegate, UITextFieldDelegate {

  weak var delegate: EventDateVCDelegate?
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var datePicker: UIDatePicker!

  var event = Event()

    override func viewDidLoad() {
        super.viewDidLoad()



    }

  func setEvent() {

    if event.name != nil {
      event.name = textField.text
      event.date = datePicker.date
    } else {
      event.name = Strings.defaultEventName

    }

  }

  @IBAction func doneButtonTapped(sender: AnyObject) {
    setEvent()
    delegate?.eventWasSet(event)
    dismissViewControllerAnimated(true, completion: nil)
  }

  func positionForBar(bar: UIBarPositioning) -> UIBarPosition {
    return .TopAttached
  }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
