//
//  PayView.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/10/22.
//

import SwiftUI

struct PayView: View {
    @State var payee: String
    @State var balance: Int = 140
    @State var amount: Int = 0

    @FocusState private var amountIsFocused: Bool
    @State var messsage: String = ""
    @Environment(\.dismiss) var dismiss
    @State var goHome: Bool = false


    
    var body: some View {
        NavigationStack{
            
            VStack{
                HStack{
                    Text(payee)
                        .foregroundColor(Color.blue)
                        .padding(.bottom)
                        .padding(.leading)
                        .padding(.top)
                    Spacer(minLength: 270)
                    TextField("Amount", value: $amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                }
                Divider()
                HStack{
                    TextField("Leave a message", text: $messsage)
                }
                .padding(.leading)
                Spacer()
            }
            Button() {
                balance -= amount
                dismiss()
            } label: {
                Text("Transfer $\(amount).00")
                    .frame(width: 200)
            }
            .padding()
            .frame(width: 300)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.blue))
            .toolbar{
                Button("Cancel") {
                    dismiss()
                }
            }
        }
    }
}

