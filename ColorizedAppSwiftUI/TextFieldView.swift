//
//  TextFieldView.swift
//  ColorizedAppSwiftUI
//
//  Created by Андрей Абакумов on 12.12.2022.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    var body: some View {
        TextField("", text: $textValue)
            .border(.black)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(textValue: .constant("55"), value: .constant(55))
    }
}
