//
//  Crypto.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/6/22.
//

import SwiftUI

struct Crypto: View {
    private var cryptoTypes = ["Bitcoin", "Etherium", "Litecoin", "Bitcoin Cash"]
    
    var body: some View {
        ZStack{
            VStack{
                Text("Buy crypto with as little as $1")
                    .font(.title3)
                    .bold()
                    .padding(.bottom)
                ForEach(cryptoTypes, id: \.self){ item in
                    CryptoView(type: item)
                }
            }
        }
    }
}

struct CryptoView: View{
    var type: String
    
    var body: some View{
        HStack{
            Image(type)
                .resizable()
                .frame(width: 50, height: 50)
            Text(type)
                .font(.subheadline)
            Spacer()
        }
        .padding(.leading)
    }
}

struct Crypto_Previews: PreviewProvider {
    static var previews: some View {
        Crypto()
    }
}
