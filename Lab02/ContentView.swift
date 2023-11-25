//
//  ContentView.swift
//  Lab02-Vasilev-403
//
//  Created by user on 20.11.2023.
//  Copyright © 2023 KITMobile. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var text:String = "MyName"
    @State var text1:String = "Hello World";
    @State var text2:String = "Hello World";
    @State var textbut:String = "CLICK ON ME";
    @State var showDetails = false;
    var body: some View {
        ZStack {
                   Image("myImage")
                       .scaleEffect(4.0)
               VStack{
                HStack{
                    Button(action: {
                    print("Hello, Traveller 1!")
                        self.text1 = "Hello, Traveller 1!"
                    })
                {
                    Text("CLICK_1")
                        .foregroundColor(Color.green)
                        .font(.title)
                        .padding(3)
                        .border(Color.red, width: 2)
                    }
                      Button(action: {
                        print("Hello, Traveller 2!")
                            self.text2 = "Hello, Traveller 2!"
                      })
                                  {
                                      Text("CLICK_2")
                                        .fontWeight(.bold)
                                        .font(.title)
                                    
                                        .background(Color.red)
                                          .foregroundColor(Color.green)
                                    .padding(5)
                                          .border(Color.red, width: 2)
                                      }         }
                   HStack{
                    Text(text1)
                           Text(text2)
                   }
                if showDetails {
                    HStack{
                        Image(systemName: "person.fill")               .font(.largeTitle).foregroundColor(Color.blue);
                        Text(text).padding()
                            .foregroundColor(Color.white)
                            .background(Color.pink) .cornerRadius(10)
                                .foregroundColor(.white)
                                .padding(5)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 4))                    }
                }
                   HStack{
                       Text(text2)
                       Text(text1)
                           }
                Button(action: {
                    print("Hello, World AGAIN!")
                    self.text = "Lab-02-Vasilev_Daniil-403"
                    self.textbut = "I LIKE THAT!!!"
                    self.showDetails.toggle()
                })
                {
                
                    HStack{
                        if showDetails == true {
                        Image(systemName: "heart.fill")
                        .padding() .foregroundColor(Color.yellow)
                            .padding()
                            .font(.largeTitle)
                            .background(Color.red)
                            .clipShape(Circle())
                        Text(textbut).fontWeight(.bold)
                            .font(.title)
                        .padding()
                            .background(Color.purple)
                        .cornerRadius(40)
                            .foregroundColor(.white)
                        .padding(10)
                            .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.purple, lineWidth: 5))
                        }
                        else if showDetails == false {
                   Text("CLICK ON ME").fontWeight(.bold)
                             .font(.title)
                         .padding()
                             .background(Color.purple)
                         .cornerRadius(40)
                             .foregroundColor(.white)
                         .padding(10)
                             .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.purple, lineWidth: 5))
                            
                        }
                    }
                }
                HStack(spacing: 4) {
                  ForEach(1..<7) { i in Text("\(i)")
                    .bold()
                    .frame(width: 25)
                        .padding(10)
                        .border(Color.black, width: 5)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        }
                }
                if showDetails {
                    VStack {
                    ForEach(7..<9) { i in Text("\(i)")
                        .bold()
                        .frame(width: 30)
                        .padding(10)
                        .border(Color.black, width: 5)
                        .background(Color.yellow)
                        .foregroundColor(.blue)
                        .cornerRadius(10)
                        }
                }
            }
                
                HStack(spacing: 4) {
                    ForEach(9..<15) { i in Text("\(i)").bold()
                        .frame(width: 25)
                        .padding(10)
                          .border(Color.black, width: 5)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        }
                    }
                
                Group {
                    HStack(spacing: 0) {
                        ForEach(1..<9) { i in
                        if(i%2 == 0){
                            Text("\(i)").frame(width: 20)
                                .padding(5)
                                .background(Color.black)
                            .border(Color.gray, width: 2)
                        }
                        else
                        {
                            Text("\(i)").frame(width: 20)
                                .padding(5)
                            .background(Color.white)
                                .border(Color.gray, width: 2)
                                .foregroundColor(.white)
                            }
                        }
                }
                
                    HStack(spacing: 0) {
                           ForEach(1..<9) { i in
                           if(i%2 == 1){
                               Text("\(i)").frame(width: 20)
                                   .padding(5)
                                   .background(Color.black)
                               .border(Color.gray, width: 2)
                           }
                           else
                           {
                               Text("\(i)").frame(width: 20)
                                   .padding(5)
                               .background(Color.white)
                                   .border(Color.gray, width: 2)
                                   .foregroundColor(.white)
                               }
                           }
                   }
         
                
                               
                     HStack(spacing: 0) {
                             ForEach(1..<9) { i in
                             if(i%2 == 0){
                                 Text("\(i)").frame(width: 20)
                                     .padding(5)
                                     .background(Color.black)
                                 .border(Color.gray, width: 2)
                             }
                             else
                             {
                                 Text("\(i)").frame(width: 20)
                                     .padding(5)
                                 .background(Color.white)
                                     .border(Color.gray, width: 2)
                                     .foregroundColor(.white)
                                 }
                             }
                     }
                     
                         HStack(spacing: 0) {
                                ForEach(1..<9) { i in
                                if(i%2 == 1){
                                    Text("\(i)").frame(width: 20)
                                        .padding(5)
                                        .background(Color.black)
                                    .border(Color.gray, width: 2)
                                }
                                else
                                {
                                    Text("\(i)").frame(width: 20)
                                        .padding(5)
                                    .background(Color.white)
                                        .border(Color.gray, width: 2)
                                        .foregroundColor(.white)
                                    }
                                }
                        }
                    
                    HStack(spacing: 0){
                            ForEach(1..<9) { i in
                            if(i%2 == 0){
                                Text("\(i)").frame(width: 20)
                                    .padding(5)
                                    .background(Color.black)
                                .border(Color.gray, width: 2)
                            }
                            else
                            {
                                Text("\(i)").frame(width: 20)
                                    .padding(5)
                                .background(Color.white)
                                    .border(Color.gray, width: 2)
                                    .foregroundColor(.white)
                                }
                            }
                    }
                    
                        HStack(spacing: 0) {
                               ForEach(1..<9) { i in
                               if(i%2 == 1){
                                   Text("\(i)").frame(width: 20)
                                       .padding(5)
                                       .background(Color.black)
                                   .border(Color.gray, width: 2)
                               }
                               else
                               {
                                   Text("\(i)").frame(width: 20)
                                       .padding(5)
                                   .background(Color.white)
                                       .border(Color.gray, width: 2)
                                       .foregroundColor(.white)
                                   }
                            }
                    }
                }
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
