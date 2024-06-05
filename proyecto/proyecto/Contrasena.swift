//
//  Contrasena.swift
//  proyecto
//
//  Created by Mauricio Alexander Contreras Escobar on 5/15/24.
//  Copyright © 2024 Mauricio Alexander Contreras Escobar. All rights reserved.
//

import SwiftUI

struct Contrasena: View {
    @State private var correo: String = ""
    @State private var clave: String = ""
    @State private var isLoggedIn: Bool = false
    @State private var isLoggedIn2: Bool = false
    var body: some View {
         NavigationView {
                  VStack {
                    Text("Has olvidado tu contraseña")
                    Image("restablecerlacontrasena")
                    .resizable()
                    .frame(width: 100, height:100)
                Rectangle()
                    .frame(width: 300, height: 450)
                    .foregroundColor(.blue)
                    .cornerRadius(75)
                    .overlay(
                        VStack {
                            TextField("Correo", text: $correo)
   .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 290, height: 40)
                                .foregroundColor(.white)
                               
                            TextField("Contraseña", text: $clave)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 290, height: 40)
                        .foregroundColor(.white)
                
    Button(action: {
        self.isLoggedIn = true  }){Text("Actualizar")
            .foregroundColor(.white)
        .frame(width: 290, height: 40)    .background(Color.gray)
        .padding()
            .cornerRadius(10)
    }
        NavigationLink(
        destination: ContentView(),
        isActive: self.$isLoggedIn,
        label: {
        EmptyView()
        })
        Button(action: {
            self.isLoggedIn2 = true
})            {Text("Actualizar")                           .foregroundColor(.white)
            .frame(width: 290, height: 40)             .background(Color.gray)
                        .cornerRadius(10)
                            }
               NavigationLink(
               destination: ContentView(),
               isActive: self.$isLoggedIn2,
               label: {
               EmptyView()
               })
            }
            )
        }
    }
    }
}
struct Contrasena_Previews: PreviewProvider {
    static var previews: some View {
        Contrasena()
    }
}
