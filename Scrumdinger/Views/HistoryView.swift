//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by 강동영 on 12/4/24.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeesString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

extension History {
    var attendeesString: String {
        ListFormatter.localizedString(byJoining: attendees.map { $0.name })
    }
}

#Preview {
    let history: History = History(attendess: [
        DailyScrum.Attendee(name: "Jon"),
        DailyScrum.Attendee(name: "Darla"),
        DailyScrum.Attendee(name: "Luis"),
    ], transcript: "Darla, would you like to start today? Sure, yesterday I reviewed Luis' PR and met with the design team to finalize the UI...")
    
    HistoryView(history: history)
}
