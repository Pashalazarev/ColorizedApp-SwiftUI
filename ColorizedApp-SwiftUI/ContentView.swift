//
//  ContentView.swift
//  ColorizedApp-SwiftUI
//
//  Created by Pavel Lazarev Macbook on 22.10.2022.
//

import SwiftUI


struct ContentView: View {
    @State var redColor: Double = 20
    @State  var greenColor: Double = 30
    @State var blueColor: Double = 40
    
    
    var body: some View {
        VStack(spacing: 9.0){
            ColorView(redColor: redColor,
                      greenColor: greenColor,
                      blueColor: blueColor)
            
            SliderAndText(sliderValue: $redColor, sliderColor: .red)
            SliderAndText(sliderValue: $greenColor, sliderColor: .green)
            SliderAndText(sliderValue: $blueColor, sliderColor: .blue)
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
