//
//  CGImage+Init.swift
//  Intrinsic
//
//  Created by Ryan Walklin on 4/10/2015.
//  Copyright © 2015 Test Toast. All rights reserved.
//

import Foundation

#if os(OSX)
    import AppKit.NSImage
    
    extension NSImage {
        public var cgImage: CGImage? {
            get {
                guard let imageData = tiffRepresentation else {
                    return nil
                }
                guard let source = CGImageSourceCreateWithData(imageData as CFData, nil) else {
                    return nil
                }
                let maskRef = CGImageSourceCreateImageAtIndex(source, 0, nil)
                return maskRef
            }
        }
    }
#elseif os(iOS)
    import UIKit.UIImage
#endif

extension CGImage {
    
    public class func loadFromURL (_ url: String, completionBlock: @escaping (CGImage?, NSError?) -> ()) {
        
        let imageOperation = NetworkOperation(url: url)
        imageOperation.completionBlock = {
            if let error = imageOperation.error {
                completionBlock(nil, error)
                return
            }
            guard let imageData = imageOperation.data else {
                 completionBlock(nil, nil)
                return
            }
            completionBlock(CGImage.from(imageData), nil)
        }
        imageOperation.enqueue()
    }
    
    public class func from(_ data: Data) -> CGImage? {
        #if os(OSX)
            let nsImage = NSImage(data: data)
            return nsImage?.cgImage
        #elseif os(iOS)
            let uiImage = UIImage(data: data)
            return uiImage?.cgImage
        #endif
    }

}
