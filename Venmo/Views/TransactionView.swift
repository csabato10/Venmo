//
//  TransactionView.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/10/22.
//

import Foundation
import SwiftUI

struct TransactionView: View {
    @State private var showingPayPerson = false
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    @State private var friends = ["Michael Jackson", "Roy Williams", "Mack Brown", "Keven Guskiewicz", "Kris Jordan", "Drake Maye", "RJ"]
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("Enter Username", text: $username)
                            }
        }
        .toolbar{
            Button{
                dismiss()
            }
            label: {
                Image(systemName: "chevron.backward")
            }
        }
    }
}
