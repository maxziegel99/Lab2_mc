//
//  ContentView.swift
//  Lab2_mc
//
//  Created by student on 27/04/2024.
//



import SwiftUI

var body: some View{
VStack{
Text("Memo")
.font(.largeTitle)
.padding()
}
}





struct ContentView: View {
@State var cCount = 4
    
@State var emote = ["🐣","🐙","🐡","🐝","☘️","🐥","🪲","🦧","🦑","🦜","🦋","🦀","🦈","🐳","🪼"]

@State var bgColor = Color.blue



    



    
func adjustCardNumber(by offset: Int, symbol: String) -> some View {
Button(
action: { cCount += offset },
label: { Image(systemName: symbol).font(.largeTitle) }
).disabled(cCount + offset < 2
|| cCount + offset >= emote.count)
}

//func themeChooser() -> (Array<String>,Int){
//    if(styles == emote1){
//        return(emote1.shuffled(), emote1.count())
//    }
//    if(styles == emote2){
//        return(emote2.shuffled(), emote2.count())
//    }
//    else if(styles == emote3){
//        return(emote3.shuffled(), emote3.count())
//    }
//    }
         
    
func cDisplay() -> some View {

let column = [GridItem(.adaptive(minimum: 70))]


return LazyVGrid(columns: column ){
ForEach(0 ..< cCount, id: \.self) { i in
CardView(content: emote[i])
}
}
}

    func themeChooser1(by offset: Int, symbol: String) -> some View {
    Button(
        action: { emote = ["🐣","🐙","🐡","🐝","☘️","🐥","🪲","🦧","🦑","🦜","🦋","🦀","🦈","🐳","🪼"]
            bgColor = Color.blue
        },
    label: { Image(systemName: symbol).font(.largeTitle) }
    )
    }
    
    func themeChooser2(by offset: Int, symbol: String) -> some View {
    Button(
    action: { emote = ["🇧🇬","🇬🇾","🇫🇮","🇬🇷","🇬🇵","🇬🇪","🇬🇱","🇬🇭","🇧🇶","🇳🇮","🇵🇪","🇲🇳","🇳🇿","🇳🇬","🇵🇱"]
        bgColor = Color.yellow},
    label: { Image(systemName: symbol).font(.largeTitle) }
    )
    }
    
    func themeChooser3(by offset: Int, symbol: String) -> some View {
    Button(
    action: { emote = ["📟","📟","📟","📟","📟","📟","📟","📟","📟","📟","📟","📟","📟","📟","📟"]
        bgColor = Color.red},
    label: { Image(systemName: symbol).font(.largeTitle) }
    )
    }
    

var body: some View {
VStack {

Text("Memo")
.font(.largeTitle)
.padding()
    
HStack {
 

cDisplay()
}.padding()
HStack {
adjustCardNumber(by: -2, symbol: "minus.square")
Spacer()
adjustCardNumber(by: 2, symbol: "plus.square")
}.padding()
}.padding()

    
 HStack {
 themeChooser1(by: 0, symbol: "square.and.arrow.up")
 themeChooser2(by: 0, symbol: "square.and.arrow.up")
 themeChooser3(by: 0, symbol: "square.and.arrow.up")
    
  }
    
}


        
    
}

#Preview {
ContentView()
}
