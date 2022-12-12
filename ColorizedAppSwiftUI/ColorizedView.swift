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
    
    var body: some View {
        VStack {
            
            SliderView(value: $red, color: .red)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizedView()
    }
}
