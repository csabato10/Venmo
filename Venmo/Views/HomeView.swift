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
                        .foregroundColor(Color.gray)
                    Text("People and Businesses")
                        .foregroundColor(Color.gray)
                    Spacer()
                }
                .padding()
                .frame(width: 350)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(.gray)
                )
                .padding()
                VStack{
                    TransferView(senderImage: "mr. wuff", sender: "Mr. Wuff", receiver: "Dook", message: "ur lame")
                    TransferView(senderImage: "dook", sender: "Dook Devil", receiver: "Refs", message: "will this help us beat UNC?")
                    TransferView(senderImage: "deacon", sender: "Deamon Deacon", receiver: "You", message: "you bring the popcorn")
                    TransferView(senderImage: "kevin", sender: "Kevin G", receiver: "UNC Students", message: "refund for stolen scooters")
                    TransferView(senderImage: "bama", sender: "Big Al", receiver: "Mike the Tiger", message: "gummy bears")
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
    @State private var isLiked: Bool = false
    
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
                        Button(action: {
                            self.isLiked.toggle()}) {
                            Image(systemName: self.isLiked == true ? "heart.fill" : "heart")
                                    .resizable()
                                    .frame(width: 21, height: 20)
                                    .foregroundColor(Color.black
                                    )
                            }
                        Image(systemName: "bubble.right")
                            .frame(width: 30, height: 25)
                            .foregroundColor(Color.black)
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


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
