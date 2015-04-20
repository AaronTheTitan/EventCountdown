//
//  ViewController.swift
//  EventCountdown
//
//  Created by Aaron Bradley on 4/19/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import UIKit

class CountdownVC: UIViewController {


  @IBOutlet weak var eventNameLabel: UILabel!
  @IBOutlet weak var dateCountDownLabel: UILabel!
  @IBOutlet weak var timerCountDownLabel: UILabel!

  var eventDate: NSDate?
//  let eventDateVC = EventDateVC()

  override func viewDidLoad() {
    super.viewDidLoad()

//    eventDateVC.delegate = self

    eventNameLabel.text = Strings.defaultEventName
    dateCountDownLabel.text = Strings.defaultYearsAndDays

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let controller = segue.destinationViewController as! EventDateVC
    controller.delegate = self

  }

}

extension CountdownVC: EventDateVCDelegate {

  func eventWasSet(event: Event) {
//    eventDateVC.delegate = self
        println("Event Name: \(event.name) Event Date: \(event.date)")
    eventNameLabel.text = event.name
    eventDate = event.date

  }

}
