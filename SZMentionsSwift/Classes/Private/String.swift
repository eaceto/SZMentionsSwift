//
//  String.swift
//  SZMentionsSwift
//
//  Created by Steve Zweier on 2/1/16.
//  Copyright © 2016 Steven Zweier. All rights reserved.
//

import UIKit

internal extension String {
    func range(of strings: [String], options: NSString.CompareOptions, range: NSRange? = nil) -> (range: NSRange, foundString: String) {
        let nsself = (self as NSString)
        var foundRange = NSRange(location: NSNotFound, length: 0)

        let string = strings.first {
            if let range = range {
                foundRange = nsself.range(of: $0, options: options, range: range)
            } else {
                foundRange = nsself.range(of: $0, options: options)
            }

            return foundRange.location != NSNotFound
        } ?? ""

        return (foundRange, string)
    }
}
