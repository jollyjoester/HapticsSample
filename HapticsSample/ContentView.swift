//
//  ContentView.swift
//  HapticsSample
//
//  Created by jollyjoester on 2021/11/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Group {
                Text("UIImpactFeedbackGenerator").padding()
                Button("light", action: {
                    HapticFeedback.impact(with: .light)
                }).padding()
                Button("medium", action: {
                    HapticFeedback.impact(with: .medium)
                }).padding()
                Button("heavy", action: {
                    HapticFeedback.impact(with: .heavy)
                }).padding()
                Button("soft", action: {
                    HapticFeedback.impact(with: .soft)
                }).padding()
                Button("rigid", action: {
                    HapticFeedback.impact(with: .rigid)
                }).padding()
            }
            
            Group {
                Text("UISelectionFeedbackGenerator")
                Button("(no option)", action: {
                    HapticFeedback.select()
                }).padding()
            }
            
            Group {
                Text("UINotificationFeedbackGenerator")
                Button("success", action: {
                    HapticFeedback.notification(with: .success)
                }).padding()
                Button("warning", action: {
                    HapticFeedback.notification(with: .warning)
                }).padding()
                Button("error", action: {
                    HapticFeedback.notification(with: .error)
                }).padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
