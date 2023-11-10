//
//  scrumdingerApp.swift
//  scrumdinger
//
//  Created by Javed Ansari on 10/11/23.
//

import SwiftUI
import SwiftData

@main
struct scrumdingerApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
