//
//  Perfil.swift
//  proyecto
//
//  Created by Mauricio Alexander Contreras Escobar on 5/15/24.
//  Copyright © 2024 Mauricio Alexander Contreras Escobar. All rights reserved.
//

import SwiftUI

struct Perfil: View {
    @State private var isLoggedIn: Bool = false
    var body: some View {
         NavigationView {
                  VStack {
                    Text("Perfil")
                    Image("usuario")
                    .resizable()
                    .frame(width: 100, height:100)
                Rectangle()
                    .frame(width: 300, height: 400)
                    .foregroundColor(.blue)
                    .cornerRadius(75)
                    .overlay(
                        VStack {
                    Text("Mauricio")
                        .padding()
                    Text("Contreras")
                    Text("Edad 24 anios")
                        .padding()
                    Text("DUI 07887655")
                        .padding()
    Button(action: {
        self.isLoggedIn = true  }){Text("Salir")
            .foregroundColor(.white)
        .frame(width: 290, height: 40)      .background(Color.gray)
            .cornerRadius(10)
    }
        NavigationLink(
        destination: Menu(),
        isActive: self.$isLoggedIn,
        label: {
        EmptyView()
        })
       }
        )}
    }
    }
}
struct Perfil_Previews: PreviewProvider {
    static var previews: some View {
        Perfil()
    }
}
