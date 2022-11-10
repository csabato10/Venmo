//
//  HomeView.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/6/22.
//

import SwiftUI

struct HomeView: View {
    @State private var showingPaymentView = false
    @State private var showingScanView = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                Button {
                    showingScanView = true
                } label: {
                    Image(systemName: "magnifyingglass")
                    Text("People and Businesses")
                }
                .padding()
                .frame(width: 350)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(.blue)
                )
                VStack{
                    TransferView(senderImage: "mr. wuff", sender: "Mr. Wuff", receiver: "Dook", message: "ur lame")
                    TransferView(senderImage: "dook", sender: "Dook Devil", receiver: "Refs", message: "will this help us beat UNC?")
                    TransferView(senderImage: "deacon", sender: "Deamon Deacon", receiver: "Refs", message: "will this help us beat UNC?")
                    TransferView(senderImage: "bama", sender: "Big Al", receiver: "Mike the Tiger", message: "groceries")
                    TransferView(senderImage: "hokie", sender: "Hokie", receiver: "Dook Devil", message: "game ticket")
                    TransferView(senderImage: "mj", sender: "Michael Jordan", receiver: "Roy Williams", message: "concessions")
                }
                Spacer()
            }
            ButtonViews()
            .padding()
        }
        }
}

struct TransferView: View{
    var senderImage: String
    var sender: String
    var receiver: String
    var message: String
    
    var body: some View{
        VStack{
            HStack{
                Image(senderImage)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 75, height: 75)
                    .padding(.leading)
                VStack{
                    HStack{
                        Text(sender + " paid " + receiver)
                            .bold()
                        Spacer()
                    }
                    .padding(1)
                    HStack{
                        Text(message)
                        Spacer()
                    }
                    .padding(1)
                    HStack{
                        Image(systemName: "heart")
                        Image(systemName: "bubble.right")
                        Spacer()
                    }
                }
                Spacer()
            }
            .padding(.bottom)
            Divider()
        }
    }
}

struct TransactionView: View{
    
    
    var body: some View{
        ZStack{
            
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
