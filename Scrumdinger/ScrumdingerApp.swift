//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 강동영 on 10/29/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
