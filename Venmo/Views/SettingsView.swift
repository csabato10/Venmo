//
//  Settings View.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/12/22.
//

import SwiftUI

struct Settings_View: View {
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    Text("Account")
                    Text("Creat Business Profile")
                    Text("Payment methods")
                    Text("Shipping Addresses")
                    Text("Touch ID & PIN")
                    Text("Privacy")
                    Text("Notifications")
                    Text("Friends and Social")
                    Text("Emoji")
                    Text("Get Help")
                }
                Section{
                    Text("Tax Verification")
                    Text("Tax Documents")
                    
                }
                Section{
                    Text("Venmo Debit Card")
                    Text("Venmo Credit Card")
                    Text("Direct Deposit")
                    Text("Cash a Check")
                    Text("Backup Payment")
                    Text("Connected Businesses")
                    Text("Offers")
                    Text("Have a Code?")
                }
            }
        }
    }
}

struct Settings_View_Previews: PreviewProvider {
    static var previews: some View {
        Settings_View()
    }
}
