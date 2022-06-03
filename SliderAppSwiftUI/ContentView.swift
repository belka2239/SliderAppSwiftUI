//
//  ContentView.swift
//  SliderAppSwiftUI
//
//  Created by VG on 03.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var targetValue = Int.random(in: 1...100)
    @State private var currentValue = 20.0
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            SliderView(
                currentValue: $currentValue,
                targetValue: targetValue,
                color: .red,
                alpha: computeScore()
            )
            
            ButtonView(
                showAlert: $showAlert,
                title: "Проверить!",
                currentScore: computeScore(),
                action: { showAlert = true }
            )
            
            ButtonView(title: "Начать заново") {
                targetValue = Int.random(in: 1...100)
            }
        }
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
