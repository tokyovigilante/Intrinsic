//
//  QueueManager.swift
//  Intrinsic
//
//  Created by Ryan Walklin on 1/01/2016.
//  Copyright © 2016 Test Toast. All rights reserved.
//

import Foundation

private let _maxConcurrentNetworkRequests = 12

public class QueueManager {
    
    public static let sharedInstance = QueueManager()
    
    let networkQueue: OperationQueue

    public init () {
        
        networkQueue = OperationQueue()
        networkQueue.qualityOfService = .utility
        networkQueue.isSuspended = false
        networkQueue.maxConcurrentOperationCount = _maxConcurrentNetworkRequests
    }
    

}
