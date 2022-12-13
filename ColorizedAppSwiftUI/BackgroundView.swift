//
//  BackgroundView.swift
//  ColorizedAppSwiftUI
//
//  Created by Андрей Абакумов on 13.12.2022.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Color(.systemCyan)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
