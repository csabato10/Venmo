//
//  PaymentView.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/10/22.
//

import SwiftUI

struct PaymentView: View {
    @State private var showingPayPerson = false
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            PaymentPerson(imageName: "mj", name: "MJ", username: "MJ23", showingPayView: false)
            PaymentPerson(imageName: "roy", name: "Roy Williams", username: "RoyBoi", showingPayView: false)
            PaymentPerson(imageName: "mr. wuff", name: "Mr. Wuff", username: "arfarf", showingPayView: false)
            PaymentPerson(imageName: "deacon", name: "Demon Deacon", username: "DDeacon", showingPayView: false)
            PaymentPerson(imageName: "kevin", name: "Kevin G", username: "KevinGus", showingPayView: false)
            PaymentPerson(imageName: "kris", name: "Kris Jordan", username: "cpuhat", showingPayView: false)
            PaymentPerson(imageName: "appteam", name: "App Team", username: "appteamcarolina", showingPayView: false)
            Spacer()
        }
    }
}

struct PaymentPerson: View{
    var imageName: String
    var name: String
    var username: String
    @State var showingPayView: Bool
    
    var body: some View{
        Button {
            showingPayView.toggle()
        } label: {
            HStack{
                Image(imageName)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 75, height: 75)
                    .padding(.leading)
                VStack{
                    HStack{
                        Text(name)
                            .font(.title3)
                            .bold()
                            .foregroundColor(Color.black)
                        Spacer()
                    }
                    HStack{
                        Text("@" + username)
                            .font(.body)
                            .foregroundColor(Color.black)
                        Spacer()
                    }
                }
            }
            .padding(.top)
        }
        .sheet(isPresented: $showingPayView) {
            PayView(payee: name)
        }
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}
