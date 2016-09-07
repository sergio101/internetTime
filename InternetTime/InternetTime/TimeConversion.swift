//
//  TimeConversion.swift
//  InternetTime
//
//  Created by sergio on 9/6/16.
//  Copyright © 2016 sergio. All rights reserved.
//

import Foundation

public class TimeConversion : NSObject {
    
    public class func getInternetTime()->Int {
        let date = NSDate()
        let timeZone = NSTimeZone(name: "UTC+0100")
        let calendar =  NSCalendar.autoupdatingCurrentCalendar()
        calendar.timeZone = timeZone!
        let comp = calendar.components([.Hour, .Minute, .Second], fromDate: date)
        
        return ((comp.hour * 3600) + (comp.minute * 60) + comp.second) * 1000 / (24 * 3600)
    }
}