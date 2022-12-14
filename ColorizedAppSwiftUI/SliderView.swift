//
//  SliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Андрей Абакумов on 12.12.2022.
//

import SwiftUI

struct SliderView: View {

    @State private var textValue = ""
    @Binding var sliderValue: Double
    let color: Color
    
    var body: some View {
        HStack {
            TextValueView(value: sliderValue)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .animation(.easeInOut, value: sliderValue)
                .tint(color)
                .onChange(of: sliderValue) { newValue in
                    textValue = String(lround(newValue))
                }
            TextFieldView(textValue: $textValue, value: $sliderValue)
        }
        .onAppear {
            textValue = String(lround(sliderValue))
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(55), color: .red)
    }
}
