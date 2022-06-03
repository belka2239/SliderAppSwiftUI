//
//  ButtonView.swift
//  SliderAppSwiftUI
//
//  Created by VG on 03.06.2022.
//

import SwiftUI

struct ButtonView: View {
    @Binding var showAlert: Bool
    
    let title: String
    let currentScore: Int
    let action: () -> Void
    
    var body: some View {
        Button(title, action: action)
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Your Score"),
                    message: Text("\(currentScore)")
                )
            }
            .padding()
    }
    
    init(showAlert: Binding<Bool> = .constant(false), title: String, currentScore: Int = 0, action: @escaping () -> Void) {
        self._showAlert = showAlert
        self.title = title
        self.currentScore = currentScore
        self.action = action
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Your Score", action: {})
    }
}
