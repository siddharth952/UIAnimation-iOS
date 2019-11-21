//
//  ContentView.swift
//  UiAnimations
//
//  Created by Siddharth sen on 11/21/19.
//  Copyright © 2019 Siddharth sen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //State variable
    @State var pickerSelectedItem = 0
    @State var timeSelected : [[CGFloat]] = [
         [78 ,189 ,  32 , 66 ,148 ,108 ,155],
        [108 ,101 ,131 ,112 ,199 ,134 , 82],
         [45 ,  59 , 76 ,  89 , 59 ,141 ,124]
    
    
    ]
    
    
    var body: some View {
        
        ZStack{
            Color("appBackground").edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Text("Calory Intake")
                    .font(.system(size:34))
                    .fontWeight(.heavy)
                
                Picker(selection: $pickerSelectedItem, label: Text("")){
                    Text("Weekday").tag(0)
                    Text("Afternoon").tag(1)
                    Text("Evening").tag(2)
                    }.pickerStyle(SegmentedPickerStyle()).padding(32)
                
            }
            
            HStack(spacing: 16){
                BarView(value: timeSelected[pickerSelectedItem][0],day_text: "M")
                BarView(value: timeSelected[pickerSelectedItem][1],day_text: "T")
                BarView(value: timeSelected[pickerSelectedItem][2],day_text: "W")
                BarView(value: timeSelected[pickerSelectedItem][3],day_text: "T")
                BarView(value: timeSelected[pickerSelectedItem][4],day_text: "F")
                BarView(value: timeSelected[pickerSelectedItem][5],day_text: "S")
                BarView(value: timeSelected[pickerSelectedItem][6],day_text: "S")

            }.padding(.top,350).animation(.linear)
            
        }
        
        
            
    }
}


struct BarView:View{
    
    var value:CGFloat
    var day_text:String
    
    var body:some View{
        
        VStack{
           ZStack(alignment: .bottom){
               Capsule().frame(width: 30, height: 200)
                   .foregroundColor(Color(#colorLiteral(red: 0.2855904102, green: 0.7915002108, blue: 0.6359320879, alpha: 1)))
               Capsule().frame(width: 30, height: value)
                   .foregroundColor(.purple)
           }
           Text(day_text)
        }
        
    }
    
    
}






//LiveView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
