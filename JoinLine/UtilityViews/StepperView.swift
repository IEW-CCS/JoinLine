//
//  StepperView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/27.
//

import SwiftUI

struct StepperView: View {
    @State private var value = 0
    let step = 1
    let range = 1...50

    var body: some View {
        Stepper(value: $value,
                in: range,
                step: step) {
            Text("\(value)")
                .padding(.trailing, 10)
        }
        //.background(Color.white)
    }
}


struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
