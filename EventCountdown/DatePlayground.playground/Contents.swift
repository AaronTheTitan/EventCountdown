//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


// Create a new date with the current time
NSDate *date = [NSDate new];

// Split up the date components
NSDateComponents *time = [[NSCalendar currentCalendar]
  components:NSHourCalendarUnit | NSMinuteCalendarUnit
  fromDate:date];

NSInteger seconds = ([time hour] * 60 * 60) + ([time minute] * 60);

UIDatePicker *picker = [UIDatePicker new];
[picker setDatePickerMode:UIDatePickerModeCountDownTimer];
[picker setCountDownDuration:seconds];

[[self view] addSubview:picker];


/////////////---------------------------


let currentDate = NSDate() // new date with current time

let time = NSDateComponents()
time.setValue(<#value: Int#>, forComponent: <#NSCalendarUnit#>)

let seconds = NSInteger
