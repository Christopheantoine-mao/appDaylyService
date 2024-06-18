//
//  SplashScreenView.swift
//  appDaylyService
//
//  Created by formation on 18/06/2024.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    
    var body: some View {
        VStack {
            if isActive {
                MainTabView()
            } else {
                VStack {
                    Spacer()
                    Text("DailyServices")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Spacer()
                    HStack {
                        Button(action: {
                            // Action for previous screen
                        }) {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                        }
                        Spacer()
                        Button(action: {
                            // Action for next screen
                        }) {
                            Image(systemName: "chevron.right")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                        }
                    }
                    .padding()
                }
                .background(Color.white)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.5)) {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
