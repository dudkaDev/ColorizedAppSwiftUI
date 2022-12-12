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
    }
}

struct TextValueView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        TextValueView(value: 55)
    }
}
