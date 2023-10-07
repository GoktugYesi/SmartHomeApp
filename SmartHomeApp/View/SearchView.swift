//
//  SearchView.swift
//  SmartHomeApp
//
//  Created by Göktug Yeşil on 2.10.2023.
//

import SwiftUI

struct SearchView: View {
    
    var body: some View {
        VStack {
            HStack{
                Text("Search")
                  .font(
                    Font.custom("Manrope", size: 32)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                
                Spacer()
                
                Text("Wifi:tw1r_413_7G")
                  .font(
                    Font.custom("Manrope", size: 12)
                      .weight(.medium)
                  )
                  .foregroundColor(.gray)
            }
            .padding(.top, 50)
            
            HStack{
                Text("3 new devices")
                    .font(
                        Font.custom("Manrope", size: 17)
                            .weight(.medium)
                    )
                    .foregroundColor(.gray)
            Spacer()
            }
            .padding(.top, 2)
            
            HStack{
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 169, height: 186)
                        .background(Color(red: 0.16, green: 0.14, blue: 0.14))
                        .cornerRadius(24)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .inset(by: 0.5)
                                .stroke(Color(red: 1, green: 0.7, blue: 0.4).opacity(0.6), lineWidth: 1)
                        )
                    VStack{
                        Spacer()
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 77, height: 78)
                            .background(
                                Image("Bork")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 77, height: 78)
                                    .clipped()
                            )
                        Spacer()
                        Text("Bork V530")
                            .font(
                                Font.custom("Manrope", size: 17)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                        
                        
                        
                        Text("Vacuum cleaner")
                            .font(
                                Font.custom("Manrope", size: 12)
                                    .weight(.medium)
                            )
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                }
                .frame(width: 169, height: 186)
                .shadow(color: .black.opacity(0.25), radius: 32, x: 0, y: 32)
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 169, height: 186)
                        .background(Color(red: 0.16, green: 0.14, blue: 0.14))
                        .cornerRadius(24)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .inset(by: 0.5)
                                .stroke(Color(red: 1, green: 0.7, blue: 0.4).opacity(0.6), lineWidth: 1)
                        )
                    VStack{
                        Spacer()
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 39, height: 78)
                            .background(
                                Image("Light")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 39, height: 78)
                                    .clipped()
                            )
                        Spacer()
                        Text("LIFX LED Light")
                          .font(
                            Font.custom("Manrope", size: 17)
                              .weight(.semibold)
                          )
                          .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                        
                        
                        
                        Text("Smart bulb")
                          .font(
                            Font.custom("Manrope", size: 12)
                              .weight(.medium)
                          )
                          .foregroundColor(.white)
                        
                        Spacer()
                    }
                }
                .frame(width: 169, height: 186)
                .shadow(color: .black.opacity(0.25), radius: 32, x: 0, y: 32)
            }
            .padding(.top, 60)
            
            HStack{
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 169, height: 186)
                        .background(Color(red: 0.16, green: 0.14, blue: 0.14))
                        .cornerRadius(24)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .inset(by: 0.5)
                                .stroke(Color(red: 1, green: 0.7, blue: 0.4).opacity(0.6), lineWidth: 1)
                        )
                    VStack{
                        Spacer()
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 77, height: 78)
                            .background(
                                Image("Dem")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 77, height: 78)
                                    .clipped()
                            )
                        Spacer()
                        Text("Xiaomi DEM-F600")
                            .font(
                                Font.custom("Manrope", size: 17)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                        
                        
                        
                        Text("Humidifier")
                            .font(
                                Font.custom("Manrope", size: 12)
                                    .weight(.medium)
                            )
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                }
                .frame(width: 169, height: 186)
                .shadow(color: .black.opacity(0.25), radius: 32, x: 0, y: 32)
                
                ZStack {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 169, height: 186)
                      .cornerRadius(24)
                      .overlay(
                        RoundedRectangle(cornerRadius: 24)
                          .stroke(Color(red: 0.22, green: 0.21, blue: 0.21), style: StrokeStyle(lineWidth: 2, dash: [4, 4]))
                      )
                    VStack{
                        Spacer()
                        Image("Wifi")
                            .frame(width: 23, height: 23)
                        Spacer()
                        Text("Not found device?")
                          .font(
                            Font.custom("Manrope", size: 17)
                              .weight(.semibold)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                        
                        Text("Select manually")
                          .font(
                            Font.custom("Manrope", size: 12)
                              .weight(.medium)
                          )
                          .foregroundColor(Color(red: 1, green: 0.7, blue: 0.4))
                        Spacer()
                    }
                }
                .frame(width: 169, height: 186)
            }
            .padding(.top)
            Spacer()
            
            Button(action: {
                // Düğmeye tıklandığında yapılacak işlemi buraya ekleyin
            }) {
                Text("Add device")
                    .font(
                        Font.custom("Manrope", size: 17)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.13, green: 0.11, blue: 0.11))
                    .frame(width: 350, height: 63)
                    .background(Color(red: 1, green: 0.7, blue: 0.4))
                    .cornerRadius(16)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.13, green: 0.11, blue: 0.11))
        .ignoresSafeArea(.all) // Tam ekran yapar
    }
}
    


#Preview {
    SearchView()
}
