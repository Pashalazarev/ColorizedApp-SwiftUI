//
//  ColorView.swift
//  ColorizedApp-SwiftUI
//
//  Created by Pavel Lazarev Macbook on 23.10.2022.
//

import SwiftUI

struct ColorView: View {
    
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        Color(red: redColor/255,
              green: greenColor/255,
              blue: blueColor/255)
            .frame( height: 150)
            .cornerRadius(12)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redColor: 250, greenColor: 90, blueColor: 190)
    }
}
