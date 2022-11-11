//
//  SwiftUIView.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/10/22.
//

//import SwiftUI
//
//struct SwiftUIView: View {
//    @State
//
//    var body: some View {
//        HStack{
//            Button {
//                showingScanView = true
//            } label: {
//                Image(systemName: "qrcode")
//                Text("Scan")
//            }
//            .padding()
//            .frame(width: 150)
//            .overlay(
//                RoundedRectangle(cornerRadius: 50)
//                    .stroke(.blue)
//            )
//            .sheet(isPresented: $showingScanView) {
//                ScanView()
//            }
//    }
//}
//
//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        SwiftUIView()
//    }
//}
