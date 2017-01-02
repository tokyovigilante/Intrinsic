//
//  Date+Utils.swift
//  Horizon
//
//  Created by Ryan Walklin on 2/1/17.
//
//

import Foundation

@available(OSX 10.12, *)
private let _iso8601Formatter = ISO8601DateFormatter()

extension Date {
    
    public var iso8601String: String {
        if #available(OSX 10.12, iOS 10.0, *) {
            return _iso8601Formatter.string(from: self)
        } else {
            // Fallback on earlier versions
            return "Unsupported"
        }
    }
    
    /**
     Returns an NSDate formatted from an ISO8601 date in UTC with the format yyyy-MM-ddTHH:mm:ssZ
     
     - parameter isoDate: Date string to generate date from.
     
     - returns: An NSDate object from the provided string or nil if the conversion failed.
     */
    public static func from (iso8601String: String) -> Date? {
        if #available(OSX 10.12, iOS 10.0, *) {
            return _iso8601Formatter.date(from: iso8601String)
        } else {
            // Fallback on earlier versions
            return Date()
        }
    }
    
}
