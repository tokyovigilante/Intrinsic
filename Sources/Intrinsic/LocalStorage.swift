//
//  LocalStorage.swift
//  Intrinsic
//
//  Created by Ryan Walklin on 1/03/2016.
//  Copyright © 2016 Test Toast. All rights reserved.
//

import Foundation

/// Functions to store support files on device
public class LocalStorage {
    
    public class func getAppSupportURL () -> URL {
        #if os(OSX)
            return FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask)[0].appendingPathComponent(LocalStorage.getExecutableName())
            #elseif os(iOS)
            return FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask)[0]
        #endif
    }
    
    private class func getExecutableName () -> String {
        return ProcessInfo.processInfo.processName
    }
    
}
