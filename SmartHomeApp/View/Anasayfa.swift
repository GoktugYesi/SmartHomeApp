//
//  Anasayfa.swift
//  SmartHomeApp
//
//  Created by Göktug Yeşil on 2.10.2023.
//

import SwiftUI

struct Anasayfa: View {
    @State private var isMode2Enabled = false
    @State private var isMode2Manrope = true
    @State private var sliderValueMain: Double = 0.7
    @State private var sliderValueFloor: Double = 0.4
    
    var body: some View {
        VStack {
            ZStack{
                ScrollView{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 430, height: 453)
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.13, green: 0.11, blue: 0.11), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.13, green: 0.11, blue: 0.11).opacity(0), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0.5, y: 1),
                                endPoint: UnitPoint(x: 0.5, y: 0.84)
                            )
                        )
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.1, green: 0.04, blue: 0.02).opacity(0.5), location: 0.22),
                                    Gradient.Stop(color: Color(red: 0.1, green: 0.04, blue: 0.02).opacity(0), location: 0.50),
                                ],
                                startPoint: UnitPoint(x: 0.5, y: 0),
                                endPoint: UnitPoint(x: 0.5, y: 0.66)
                            )
                        )
                        .background(
                            Image("Image")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 430, height: 453)
                                .clipped()
                                .edgesIgnoringSafeArea(.all)
                        )
                    
                    
                    HStack {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 178, height: 208)
                                .background(Color(red: 0.16, green: 0.14, blue: 0.14))
                                .cornerRadius(24)
                            
                            VStack {
                                VStack (spacing: 15){
                                    HStack{
                                        Text("36%")
                                            .font(
                                                Font.custom("Manrope", size: 32)
                                                    .weight(.medium)
                                            )
                                            .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                        Spacer()
                                        
                                        Image(systemName: "humidity")
                                            .font(.system(size: 24))
                                            .foregroundColor(Color.white)
                                        
                                    }
                                    
                                    HStack{
                                        Text("Humidifier Air")
                                            .font(Font.custom("Manrope", size: 12))
                                            .kerning(0.12)
                                            .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                        Spacer()
                                    }
                                }
                                Spacer()
                                
                                Divider()
                                    .foregroundColor(.clear)
                                    .frame(width: 129, height: 1)
                                    .background(Color(red: 0.22, green: 0.21, blue: 0.21))
                                
                                Spacer()
                                
                                HStack{
                                    Text("Mode 2")
                                        .font(Font.custom("Manrope", size: 12))
                                        .kerning(0.12)
                                        .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                    Spacer()
                                    
                                    Toggle("", isOn: $isMode2Enabled)
                                        .foregroundColor(isMode2Enabled ? Color.green : Color.orange)
                                    
                                }
                                
                            }.padding(30)
                        }
                        .frame(width: 178, height: 208)
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 178, height: 208)
                                .background(Color(red: 0.16, green: 0.14, blue: 0.14))
                                .cornerRadius(24)
                            
                            VStack {
                                VStack (spacing: 15){
                                    HStack{
                                        Text("73%")
                                            .font(
                                                Font.custom("Manrope", size: 32)
                                                    .weight(.medium)
                                            )
                                            .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                        Spacer()
                                        
                                        Image(systemName: "wind")
                                            .font(.system(size: 24))
                                            .foregroundColor(Color.white)
                                        
                                    }
                                    
                                    HStack{
                                        Text("Purifier Air")
                                            .font(Font.custom("Manrope", size: 12))
                                            .kerning(0.12)
                                            .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                        Spacer()
                                    }
                                }
                                Spacer()
                                
                                Divider()
                                    .foregroundColor(.clear)
                                    .frame(width: 129, height: 1)
                                    .background(Color(red: 0.22, green: 0.21, blue: 0.21))
                                
                                Spacer()
                                
                                HStack{
                                    Text("On")
                                        .font(Font.custom("Manrope", size: 12))
                                        .kerning(0.12)
                                        .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                    Spacer()
                                    
                                    Toggle("", isOn: $isMode2Manrope)
                                        .foregroundColor(isMode2Manrope ? Color.green : Color.orange)
                                    
                                }
                                
                            }.padding(30)
                        }
                        .frame(width: 178, height: 208)
                        
                    }
                    .padding(.bottom)
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 356, height: 214)
                            .background(Color(red: 0.16, green: 0.14, blue: 0.14))
                            .cornerRadius(24)
                        
                        VStack {
                            HStack{
                                Text("Main light")
                                    .font(Font.custom("Manrope", size: 15))
                                    .kerning(0.12)
                                    .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                Spacer()
                            }
                            HStack{
                                Slider(value: $sliderValueMain, in: 0...1)
                                    .padding()
                                    .accentColor(.orange) // Slider'ın renk ayarını yapabilirsiniz
                                    .frame(width: 280) // Slider'ın genişliğini ayarlayabilirsiniz
                                
                                Spacer()
                                
                                if sliderValueMain == 0 {
                                    Image(systemName: "lightbulb")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.white)
                                        .onTapGesture {
                                            sliderValueMain = 100
                                        }
                                }else{
                                    Image(systemName: "lightbulb.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.orange.opacity(sliderValueFloor))
                                        .onTapGesture {
                                            sliderValueMain = 0
                                        }
                                }
                                
                                
                                
                            }
                            
                            HStack{
                                Text("Floor lamp")
                                    .font(Font.custom("Manrope", size: 15))
                                    .kerning(0.12)
                                    .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                                Spacer()
                            }
                            HStack{
                                Slider(value: $sliderValueFloor, in: 0...1)
                                    .padding()
                                    .accentColor(.orange) // Slider'ın renk ayarını yapabilirsiniz
                                    .frame(width: 280) // Slider'ın genişliğini ayarlayabilirsiniz
                                
                                Spacer()
                                
                                if sliderValueFloor == 0 {
                                    Image(systemName: "lightbulb")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.white)
                                        .onTapGesture {
                                            sliderValueFloor = 100
                                        }
                                }else{
                                    Image(systemName: "lightbulb.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color.orange.opacity(sliderValueFloor))
                                        .onTapGesture {
                                            sliderValueFloor = 0
                                        }
                                }
                            }
                        }
                        .padding(20)
                        
                    }
                    .frame(width: 350, height: 214)
                    
                    
                }
            }
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.13, green: 0.11, blue: 0.11))
        .ignoresSafeArea(.all) // Tam ekran yapar
    }
}


#Preview {
    Anasayfa()
}
