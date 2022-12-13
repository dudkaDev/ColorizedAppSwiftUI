//
//  TextValueView.swift
//  ColorizedAppSwiftUI
//
//  Created by Андрей Абакумов on 12.12.2022.
//

import SwiftUI

struct TextValueView: View {
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .bold()
            .foregroundColor(Color.white)
            .frame(width: 40)
            
    }
}

struct TextValueView_Previews: PreviewProvider {
    static var previews: some View {
        TextValueView(value: 255)
    }
}
