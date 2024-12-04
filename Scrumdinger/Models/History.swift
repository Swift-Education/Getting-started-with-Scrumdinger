//
//  History.swift
//  Scrumdinger
//
//  Created by 강동영 on 11/16/24.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    var attendees: [DailyScrum.Attendee]
    var transcript: String?
    
    init(id: UUID = UUID(), date: Date = Date(), attendess: [DailyScrum.Attendee], transcript: String? = nil) {
        self.id = id
        self.date = date
        self.attendees = attendess
        self.transcript = transcript
    }
}
