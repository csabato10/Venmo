//
//  PayView.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/10/22.
//

import SwiftUI

struct PayView: View {
    var payee: String
    @FocusState private var amountIsFocused: Bool
    @State var amount: Double = 0.0
    @State var messsage: String = ""
    
    var body: some View {
        VStack{
            HStack{
                Text(payee)
                    .foregroundColor(Color.blue)
                    .padding(.bottom)
                    .padding(.leading)
                    .padding(.top)
                Spacer()
                TextField("Amount", value: $amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)
            }
            HStack{
                TextField("Leave a message", text: $messsage)
            }
            .padding(.leading)
            Spacer()
        }
    }
}


