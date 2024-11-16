//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by 강동영 on 10/30/24.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @State private var isPresentingNewScrumView = false
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daliy Scrums")
            .toolbar {
                Button(action: {
                    isPresentingNewScrumView = true
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
        .sheet(isPresented: $isPresentingNewScrumView) {
            NewScrumSheet(
                scrums: $scrums,
                isPresentingNewScrumView: $isPresentingNewScrumView
            )
        }
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 100)) {
    ScrumsView(scrums: .constant(DailyScrum.sampleData))
}
