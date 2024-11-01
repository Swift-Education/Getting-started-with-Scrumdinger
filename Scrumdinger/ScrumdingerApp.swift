//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 강동영 on 10/29/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
