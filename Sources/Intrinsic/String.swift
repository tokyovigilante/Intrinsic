//
//  String.swift
//  Instrinsic
//
//  Created by Ryan Walklin on 28/11/14.
//  Copyright (c) 2014 Test Toast. All rights reserved.
//

import Foundation

enum ObjectSourceReferenceType {
    case bundleResource
    case networkURL
    case filePath
}

extension String {
    subscript (r: Range<Int>) -> String {
        get {
            let startIndex = self.characters.index(self.startIndex, offsetBy: r.lowerBound)
            let endIndex = self.characters.index(self.startIndex, offsetBy: r.upperBound - r.lowerBound)
            
            return self[startIndex..<endIndex]
        }
    }
    
    func replace(_ existingString: String, _ newString: String) -> String {
        return self.replacingOccurrences(of: existingString, with: newString, options: .literal, range: nil)
    }
    
    func indexOf(_ findStr:String, startIndex: String.Index? = nil) -> String.Index? {
        return self.range(of: findStr, options: [], range: nil, locale: nil)?.lowerBound
    }
    
}
