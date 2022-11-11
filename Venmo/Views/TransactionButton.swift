//
//  TransactionButton.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/10/22.
//

import Foundation
import SwiftUI

struct TransactionButton: View {
    @State private var showingPaymentView = false
    @State private var showingTransactionView = false
    var name: String
    
    
    var body: some View {
        HStack{
            Button {
                showingTransactionView = true
            } label: {
                HStack{
                    Image(name)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 75, height: 75)
                        .padding(.leading)
                    VStack{
                        HStack{
                            Text(name)
                            Spacer()
                        }
                        .padding(1)
                    }
                    Spacer()
                    .sheet(isPresented: $showingTransactionView) {
                        ScanView()
                    }
                }
            }
        }
    }
}
