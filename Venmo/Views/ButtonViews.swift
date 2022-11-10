//
//  ButtonViews.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/9/22.
//

import SwiftUI

struct ButtonViews: View {
    @State private var showingPaymentView = false
    @State private var showingScanView = false
    
    var body: some View {
        HStack{
            Button {
                showingScanView = true
            } label: {
                Image(systemName: "qrcode")
                Text("Scan")
            }
            .padding()
            .frame(width: 150)
            .overlay(
                RoundedRectangle(cornerRadius: 50)
                    .stroke(.blue)
            )
            .sheet(isPresented: $showingScanView) {
                ScanView()
                
                
            }
            
            Button {
                showingPaymentView = true
            } label: {
                Text("Pay or Request")
                    .frame(width: 175)
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(Color.white)
            .clipShape(Capsule())
            
            .sheet(isPresented: $showingPaymentView) {
                PaymentView()
            }
        }
    }
}

struct ButtonViews_Previews: PreviewProvider {
    static var previews: some View {
        ButtonViews()
    }
}
