//
//  History.swift
//  Scrumdinger
//
//  Created by 강동영 on 11/16/24.
//

import Foundation

struct History: Identifiable {
    let id: UUID
    let date: Date
    var attendess: [DailyScrum.Attendee]
    
    init(id: UUID = UUID(), date: Date = Date(), attendess: [DailyScrum.Attendee]) {
        self.id = id
        self.date = date
        self.attendess = attendess
    }
}
