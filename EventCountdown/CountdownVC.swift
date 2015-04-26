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

  var delay: NSTimeInterval = 0.0



  var eventDate: NSDate?


  override func viewDidLoad() {
    super.viewDidLoad()

    eventNameLabel.text = Strings.defaultEventName
    dateCountDownLabel.text = Strings.defaultYearsAndDays

  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let controller = segue.destinationViewController as! EventDateVC
    controller.delegate = self

  }

}

extension CountdownVC: EventDateVCDelegate {

  func eventWasSet(event: Event) {
    eventNameLabel.text = event.name

    if let date = event.date {
//      dateCountDownLabel.text = printDate(date)

      if today {

      }

      dateCountDownLabel.text = printDate(date.dateByAddingTimeInterval(delay))
    }




//    let currentDate = NSDate()
//    let eventDate = event.date
//
//
//    let timer = NSTimer(timeInterval: 0.01, target: self, selector: Selector("updateCountdown:"), userInfo: nil, repeats: true)
//
//    if let date = event.date {
//      let duration = NSDate()
//      duration.timeIntervalSinceDate(date)
//    }
//
//
//    event.dateFormatter.dateFormat = "yyyy   dd"
//    dateCountDownLabel.text = event.dateFormatter.stringFromDate(event.date!)


  }

  func printDate(date: NSDate) -> String {
    let dateFormatter = NSDateFormatter()
//    var theDateFormat = NSDateFormatterStyle.ShortStyle
//    let theTimeFormat = NSDateFormatterStyle.ShortStyle

    dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
    dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle



    return dateFormatter.stringFromDate(date)
  }

//  func delayTime(date: NSDate) -> NSDate {
//    return date.dateByAddingTimeInterval(delay)
//  }

//  func updateCountdown(timer: NSTimer) {
//
//  }




}
