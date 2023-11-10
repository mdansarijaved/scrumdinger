//
//  Item.swift
//  scrumdinger
//
//  Created by Javed Ansari on 10/11/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
