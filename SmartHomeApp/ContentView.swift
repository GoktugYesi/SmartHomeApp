//
//  ContentView.swift
//  SmartHomeApp
//
//  Created by Göktug Yeşil on 2.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var activeTab: Tab = .anasayfa
        
        @Namespace private var animation
        
    
    var body: some View {
        
        VStack(spacing: 0) {
            TabView(selection: $activeTab) {
                
                Anasayfa()
                    .tag(Tab.anasayfa)
                    .toolbar(.hidden,for: .tabBar)
                    .padding(.horizontal, 0)
                
               SearchView()
                    .tag(Tab.arama)
                    .toolbar(.hidden,for: .tabBar)
                
            }.edgesIgnoringSafeArea(.all)
           
                                  
            CustomTabBar()
                                  
        }
        
    }
    
    
    @ViewBuilder
       func CustomTabBar(_ tint: Color = Color("Orange"), _ inactiveTint: Color = .orange) ->
       some View {
           HStack(alignment: .bottom, spacing: 0) {
               ForEach(Tab.allCases, id: \.rawValue) {
                   TabItem(
                       tint: .orange,
                       inactiveTint: inactiveTint,
                       tab: $0,
                       animation: animation,
                       activeTab: $activeTab
                   )
               }
           }
           .padding(.horizontal, 15)
           .padding(.vertical, 10)
           .background(Color(red: 0.13, green: 0.11, blue: 0.11))

       }
   }

   //Tab Bar Item
   struct TabItem: View {
       var tint: Color
       var inactiveTint: Color
       var tab: Tab
       var animation: Namespace.ID
       @Binding var activeTab: Tab
       
       var body: some View{
           VStack(spacing: 5) {
               Image(systemName: tab.systemImage)
                   .font(.title2)
                   .foregroundColor(activeTab == tab ? .orange : .gray)
                   
                
               
               Text(tab.rawValue)
                   .font(.caption)
                   .foregroundColor(activeTab == tab ? tint : .gray)
               
           }.frame(maxWidth: .infinity)
               .contentShape(Rectangle())
               .onTapGesture {
                   activeTab = tab
               }
       }
   }


#Preview {
    ContentView()
}
