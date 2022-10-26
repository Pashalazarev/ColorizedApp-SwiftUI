//
//  SliderAndText.swift
//  ColorizedApp-SwiftUI
//
//  Created by Pavel Lazarev Macbook on 22.10.2022.
//

import SwiftUI


struct SliderAndText: View {
    @Binding var sliderValue: Double
    
    @State private var textFieldValue = ""
    
    let sliderColor: Color
    
    
    var body: some View {
        HStack {
            Text(lround(sliderValue).formatted())
                .lineLimit(1)
                .frame(width: 40)
                .textFieldStyle(.roundedBorder)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(sliderColor)
        
            TextField("", text: $textFieldValue)
                .frame(width: 50, alignment: .trailing)
                .multilineTextAlignment(.trailing)
                .textFieldStyle(.roundedBorder)
            
        }
    }
}

struct SliderAndText_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            SliderAndText(sliderValue: .constant(40), sliderColor: .red)
    }
}
}
