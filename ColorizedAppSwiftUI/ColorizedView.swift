//
//  ColorizedView.swift
//  ColorizedAppSwiftUI
//
//  Created by Андрей Абакумов on 12.12.2022.
//

import SwiftUI

struct ColorizedView: View {
    
    @State private var red = 55.0
    @State private var green = 55.0
    @State private var blue = 55.0
    
    @FocusState private var fieldIsFocused: Bool
    
    var body: some View {
        
        ZStack {
            Color(.systemCyan).ignoresSafeArea()
            VStack(spacing: 15) {
                ColorView(red: red, green: green, blue: blue)
                VStack {
                    SliderView(sliderValue: $red, color: .red)
                    SliderView(sliderValue: $green, color: .green)
                    SliderView(sliderValue: $blue, color: .blue)
                }
                .focused($fieldIsFocused)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            fieldIsFocused = false
                        }
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizedView()
    }
}
