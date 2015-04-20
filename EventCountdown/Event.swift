//
//  Event.swift
//  EventCountdown
//
//  Created by Aaron Bradley on 4/19/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import Foundation

class Event {
  var name: String?
  var date: NSDate?
  var calendar: NSCalendar?

  let dateFormatter = NSDateFormatter()

  func makeTimeString(timeInterval: NSTimeInterval) -> String {
    dateFormatter.dateFormat = "HH:mm:ss:SS"
    dateFormatter.timeZone = NSTimeZone(name: "UTC")

    var date = NSDate(timeIntervalSince1970: timeInterval)

    return dateFormatter.stringFromDate(date)

//    calendar?.dateByAddingComponents(NSDate(), toDate: date, options: <#NSCalendarOptions#>)
  }

//  func makeDayString(timeInterval: NSTimeInterval) -> String {
//    dateFormatter.dateFormat =
//  }

}
