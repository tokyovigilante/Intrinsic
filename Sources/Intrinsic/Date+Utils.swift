//
//  Date+Utils.swift
//  Horizon
//
//  Created by Ryan Walklin on 2/1/17.
//
//

import Foundation

import Foundation

import Foundation

fileprivate class ISODateFormatter: DateFormatter {
    
    static let shared = ISODateFormatter()
    
    override init() {
        super.init()
        locale = Locale(identifier: "en_US_POSIX")
        timeZone = TimeZone(abbreviation: "GMT")
        dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension Date {
    
    public var iso8601String: String {
        return ISODateFormatter.shared.string(from: self)
    }
    
    /**
     Returns an NSDate formatted from an ISO8601 date in UTC with the format yyyy-MM-ddTHH:mm:ssZ
     
     - parameter isoDate: Date string to generate date from.
     
     - returns: An NSDate object from the provided string or nil if the conversion failed.
     */
    public init? (iso8601 iso8601String: String) {
        guard let date = ISODateFormatter.shared.date(from: iso8601String) else {
            return nil
        }
        self = date
    }
    
}
