//
//  Inscripcion.swift
//  proyecto
//
//  Created by Mauricio Alexander Contreras Escobar on 5/15/24.
//  Copyright © 2024 Mauricio Alexander Contreras Escobar. All rights reserved.
//

import SwiftUI

struct Inscripcion: View {
@State private var isLoggedIn: Bool = false
@State private var isLoggedIn2: Bool = false
@State private var isLoggedIn3: Bool = false
    var body: some View {
         NavigationView {
                  VStack {
                    Text("Inscripcion")
                Image("formulariodeinscripcion")
                    .resizable()
                    .frame(width: 100, height:100)
                Rectangle()
                    .frame(width: 300, height: 400)
                    .foregroundColor(.blue)
                    .cornerRadius(75)
                    .overlay(
                        VStack {
    Button(action: {
        self.isLoggedIn = true  }){Text("Inscribir materias")
            .foregroundColor(.white)
        .frame(width: 290, height: 40)      .background(Color.gray)
        .padding()
            .cornerRadius(10)
    }
        NavigationLink(
        destination: Inscribir(),
        isActive: self.$isLoggedIn,
        label: {
        EmptyView()
        })
     Button(action: {
           self.isLoggedIn = true  }){Text("Listado de materias")
               .foregroundColor(.white)
        .frame(width: 290, height: 40)         .background(Color.gray)
               .cornerRadius(10)
       }
           NavigationLink(
           destination: Listado(),
           isActive: self.$isLoggedIn2,
           label: {
           EmptyView()
           })
            Button(action: {
        self.isLoggedIn3 = true  }){Text("Salir")
        .foregroundColor(.white)
                .frame(width: 290, height: 40)
        .background(Color.gray)
                .padding()
        .cornerRadius(10)
                }
        NavigationLink(
            destination: Menu(),
            isActive: self.$isLoggedIn3,
            label: {
        EmptyView()
        })
        }
        )}
    }
    }
}
struct Inscripcion_Previews: PreviewProvider {
    static var previews: some View {
        Inscripcion()
    }
}
