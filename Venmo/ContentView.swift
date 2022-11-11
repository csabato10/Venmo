//
//  ContentView.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/4/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingPaymentView = false
    @State private var showingScanView = false
    
    var body: some View {
        NavigationStack{
            Spacer()
            TabView {
                    HomeView()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                    }
                    CardsView()
                        .tabItem {
                            Image(systemName: "creditcard")
                            Text("Cards")
                    }
                    Crypto()
                        .tabItem {
                            Image(systemName: "bitcoinsign.circle.fill")
                            Text("Crypto")
                    }
                    MeView()
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Me")
                    }
                }
            .padding(.top)
            }
        }
    }
    

struct ScanView: View{
    @Environment(\.dismiss) var dismiss
    @State private var scanOptions = ["Scan Code", "Venmo me", "Show to Pay"]
    @State private var scanSelection = ""
    
    var body: some View{
        VStack{
            NavigationStack{
                VStack{
                    Form{
                        Picker("Scan Options", selection: $scanSelection){
                            ForEach(scanOptions, id: \.self){item in
                                Text(item)
                            }
                        }
                        .pickerStyle(.segmented)

                        
                    }
                }
            }
            Image("qrCode")
                .resizable()
                .frame(width: 300, height: 300)
                .padding(.bottom)
            Spacer(minLength: 300)
        }
        Spacer()
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
