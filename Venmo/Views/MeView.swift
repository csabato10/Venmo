//
//  MeView.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/6/22.
//

import SwiftUI

struct MeView: View {
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Image("ramses")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 135, height: 135)
                        .padding()
                    VStack{
                        Text("Ramses the Ram")
                            .bold()
                            .frame(alignment: .leading)
                            .font(.system(size: 20))
                        Text("@theOGgoat")
                            .padding(.trailing)
                    }
                    Spacer()
                }
                HStack{
                    VStack{
                        Text("$")
                            .padding(.bottom)
                    }
                    Text("140")
                        .font(.system(size: 60))
                }
                HStack{
                    Text("Venmo balance")
                        .font(.system(size: 12))
                }
                HStack{
                    Button {
                    } label: {
                        Text("Transfer Balance")
                            .frame(width: 300)
                    }
                    
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .clipShape(Capsule())
                        
                    }
                    Spacer()
                TransferView(senderImage: "ramses", sender: "You", receiver: "Roy Williams", message: "Am I making you proud?")
            }
        }
    }
}



struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
