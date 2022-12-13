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
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue) { _ in checkValue() }
            .multilineTextAlignment(.center)
            .textFieldStyle(.roundedBorder)
            .frame(width: 60)
            .keyboardType(.numberPad)
            .alert("Wrong format", isPresented: $showAlert, actions: {}) {
                Text("Please enter value from 0 to 255")
            }
    }
    
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 255
        textValue = String(lround(value))
    }
}


struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(textValue: .constant("55"), value: .constant(55))
    }
}
