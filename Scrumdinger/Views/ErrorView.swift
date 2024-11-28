//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by 강동영 on 11/28/24.
//

import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper
    
    var body: some View {
        VStack {
            Text("An error has occurred!")
                .font(.title)
                .padding(.bottom)
            Text(errorWrapper.error.localizedDescription)
                .font(.headline)
            Text(errorWrapper.guidance)
                .font(.caption)
                .padding(.top)
            Spacer()
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(16)
        
    }
}

#Preview {
    var wrapper: ErrorWrapper {
        ErrorWrapper(error: ErrorView.SampleError.errorRequired,
                     guidance: "You can safely ignore this error")
    }
    ErrorView(errorWrapper: wrapper)
}

#if DEBUG
fileprivate extension ErrorView {
    enum SampleError: Error {
        case errorRequired
    }

}
#endif
