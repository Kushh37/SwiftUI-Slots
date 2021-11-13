//
//  ContentView.swift
//  SwiftUI Slots
//
//  Created by Kushh Patel on 13/11/21.
//

import SwiftUI

struct ContentView: View {
    @State var credits = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    var body: some View {
        
        
            
            VStack(spacing: 20.0) {
                Spacer()
                Text("SwiftUI Slots!!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                    
                Spacer()
                Text("Credits: \(credits)")
                Spacer()
                HStack(){
                    Spacer()
                    Image("fruit\(slot1)").resizable()
                        .aspectRatio(contentMode: .fit)
                        
                    Spacer()
                    Image("fruit\(slot2)").resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Image("fruit\(slot3)").resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                
                Spacer()
                Button {
                    
                    slot1 = Int.random(in: 1...3)
                    slot2 = Int.random(in: 1...3)
                    slot3 = Int.random(in: 1...3)
                    
                    
                    if slot1 == slot2 && slot2 == slot3 {
                        
                        credits += 15
                    }
                    else {
                        credits -= 5
                    }
                    
                } label: {
                    Text("Spin")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .lineLimit(0)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: 150.0, height: 50.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
                        .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                }
                Spacer()

            }
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
