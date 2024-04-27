//
//  CardView.swift
//  Lab2_mc
//
//  Created by student on 27/04/2024.
//

import Foundation
import SwiftUI


struct CardView: View{
var content: String
    
var width = CGFloat(100)
    
var height = CGFloat(200)

    
    
@State var Reversed = false
    
@State var bgColor = Color.blue
    
@State var onBgColor = Color.white

@State var primaryColor = Color.blue
        
@State var secondaryColor = Color.green

var body: some View{

    
let rectangle = RoundedRectangle(
cornerRadius: 12)


ZStack {

    
Group {
rectangle.fill(onBgColor)
//.frame(width: width, height: height)

rectangle
.strokeBorder(style: StrokeStyle(lineWidth: 2))
.foregroundColor(bgColor)
.aspectRatio(2/3, contentMode: .fill)
//.frame(width: width, height: height)

Text(content).font(.largeTitle)

}
rectangle
.fill(bgColor)
//.frame(width: width, height: height)
.opacity(Reversed ? 1 : 0)


    
}.onTapGesture() {
Reversed = !Reversed
}
}
}
#Preview {
ContentView()
}
