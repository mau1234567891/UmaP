//
//  CrearCuenta.swift
//  proyecto
//
//  Created by Mauricio Alexander Contreras Escobar on 5/15/24.
//  Copyright © 2024 Mauricio Alexander Contreras Escobar. All rights reserved.
//

import SwiftUI
struct CrearCuenta: View {
    @State private var nombres: String = ""
    @State private var apellidos: String = ""
    @State private var edad: String = ""
    @State private var telefono: String = ""
    @State private var correo: String = ""
    @State private var clave: String = ""
    @State private var isLoggedIn: Bool = false
    @State private var isLoggedIn2: Bool = false
    var body: some View {
         NavigationView {
                  VStack {
                    Text("Crear Cuenta")
                    Image("usuario")
                    .resizable()
                    .frame(width: 75, height:75)
                Rectangle()
                    .frame(width: 300, height: 450)
                    .foregroundColor(.blue)
                    .overlay(
                        VStack {
                        TextField("Nombres", text: $nombres)
                                                                                 .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 290, height: 40)  .foregroundColor(.white)
                TextField("Apellidos", text: $apellidos)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 290, height: 40)
               .foregroundColor(.white)
    
                TextField("Edad", text: $edad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 290, height: 40)                           .foregroundColor(.white)
                    TextField("Numero de telefono", text: $telefono)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 290, height: 40)                    .foregroundColor(.white)
                            TextField("Correo", text: $correo)
   .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 290, height: 40)
                    .foregroundColor(.white)
                            TextField("Contraseña", text: $clave)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 290, height: 40)
                            .foregroundColor(.white)
                
    Button(action: {
        self.isLoggedIn = true  }){Text("Guardar")
            .foregroundColor(.white)
        .frame(width: 290, height: 40)    .background(Color.gray)
            .cornerRadius(10)
    }
        NavigationLink(
        destination: ContentView(),
        isActive: self.$isLoggedIn,
        label: {
        EmptyView()
        })
        Button(action: {
            self.isLoggedIn2 = true         }){Text("Salir")
                   .foregroundColor(.white)
            .frame(width: 290, height: 40)           .background(Color.gray)
            .padding()
                   .cornerRadius(10)
                            }
               NavigationLink(
               destination: ContentView(),
               isActive: self.$isLoggedIn2,
               label: {
               EmptyView()
               })
                .padding()
            }
            )
        }
    }
    }
}
struct CrearCuenta_Previews: PreviewProvider {
    static var previews: some View {
        CrearCuenta()
    }
}
