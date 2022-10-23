//
//  SliderAndText.swift
//  ColorizedApp-SwiftUI
//
//  Created by Pavel Lazarev Macbook on 22.10.2022.
//

import SwiftUI


struct SliderAndText: View {
    @Binding var sliderValue: Double
    
    @State var textFieldValue = ""
    
    let sliderColor: Color
    
    
    var body: some View {
        HStack {
            Text(lround(sliderValue).formatted())
                .lineLimit(1)
                .frame(width: 40)
                .textFieldStyle(.roundedBorder)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
        
            TextField("\(textFieldValue)",
                      text: $textFieldValue)
                .frame(width: 50.0)
                .textFieldStyle(.roundedBorder)
        }
    }
}

//struct SliderAndText_Previews: PreviewProvider {
//    static var previews: some View {
//        VStack{
//            SliderAndText(sliderValue: $sliderValue, sliderColor: .red)
//    }
//}
//}
