//
//  Inscribir.swift
//  proyecto
//
//  Created by Mauricio Alexander Contreras Escobar on 5/15/24.
//  Copyright © 2024 Mauricio Alexander Contreras Escobar. All rights reserved.
//

import SwiftUI

struct Inscribir: View {
    @State private var isLoggedIn: Bool = false
@State private var isLoggedIn2: Bool = false
    var body: some View {
         NavigationView {
                  VStack {
                    Text("Inscriba materias")
                    Image("casa")
                    .resizable()
                    .frame(width: 100, height:100)
                Rectangle()
                    .frame(width: 300, height: 450)
                    .foregroundColor(.blue)
                    .cornerRadius(75)
                    .overlay(
                        VStack {
    Button(action: {
        self.isLoggedIn = true  }){Text("Matematica 1 sec 1")
            .foregroundColor(.white)
        .frame(width: 290, height: 40)      .background(Color.gray)
        .padding()
            .cornerRadius(10)
    }
        NavigationLink(
        destination: materias(),
        isActive: self.$isLoggedIn,
        label: {
        EmptyView()
        })
        
        Button(action: {
    self.isLoggedIn2 = true  })
        {Text("Programacion 2 sec 1")
                .padding()
    .foregroundColor(.white)
            .frame(width: 290, height: 40)          .background(Color.gray)
            .cornerRadius(10)
                }
            NavigationLink(
            destination: Inscripcion(),
                isActive: self.$isLoggedIn2,
                                label: {
                                EmptyView()
                                })
                .padding()
            Button(action: {
                        self.isLoggedIn2 = true  })
                            {Text("Fisica 2 sec 1")
                                    .padding()
                        .foregroundColor(.white)
                                .frame(width: 290, height: 40)          .background(Color.gray)
                                .cornerRadius(10)
                                    }
                                NavigationLink(
                                destination: Inscripcion(),
                                    isActive: self.$isLoggedIn2,
                                                    label: {
                                                    EmptyView()
                                                    })    })
    }
}
    }
}
struct Inscribir_Previews: PreviewProvider {
    static var previews: some View {
        Inscribir()
    }
}
