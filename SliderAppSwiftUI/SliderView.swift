//
//  SliderView.swift
//  SliderAppSwiftUI
//
//  Created by VG on 03.06.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var currentValue: Double
    
    let targetValue: Int
    let color: UIColor
    let alpha: Int
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")
            HStack {
                Text("0")
                CustomSlider(value: $currentValue, color: color, alpha: alpha)
                Text("100")
            }
            .padding()
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(
            currentValue: .constant(20),
            targetValue: 100,
            color: .gray,
            alpha: 100)
    }
}
