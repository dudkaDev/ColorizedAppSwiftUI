//
//  SliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Андрей Абакумов on 12.12.2022.
//

import SwiftUI

struct SliderView: View {
    
    @State private var textValue = ""
    @Binding var value: Double
    let color: Color
    
    var body: some View {
        HStack {
            TextValueView(value: value)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
            TextFieldView(textValue: $textValue, value: $value)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(55), color: .red)
    }
}
