//
//  CommonLog.swift
//  FirstApp
//
//  Created by hongjuyeon_dev on 2020/05/26.
//  Copyright © 2020 hongjuyeon. All rights reserved.
//

import Foundation

func FirstAppLog<T>(_ closure: @autoclosure () -> T, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
    #if DEBUG
    let instance = closure()
    let description: String
    
    if let debutString = instance as? CustomDebugStringConvertible {
        description = String(describing: debutString)
    }
    else {
        description = "\(instance)"
    }
    
    NSLog("[FirstApp] \(URL(fileURLWithPath: file).lastPathComponent) -> \(function) [\(line)]: \(description)")
    #endif
}
