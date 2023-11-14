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
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumView(scrums: $scrums)
        }
       
    }
}
