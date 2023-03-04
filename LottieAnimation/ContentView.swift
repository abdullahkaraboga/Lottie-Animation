//
//  ContentView.swift
//  LottieAnimation
//
//  Created by Abdullah Karaboğa on 4.03.2023.
//

import SwiftUI
import Lottie

struct ContentView: View {
    var body: some View {
       Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {

        NavigationView {

            NavigationLink(
                destination:AnimationPage(),
                label: {

                    Label (title: {

                        Text("Go to Animation Page")
                            .font(.title)
                            .fontWeight(.bold)

                    }, icon: {

                        Image(systemName: "arrow")
                            .font(.system(size: 26,weight: .bold))
                            .foregroundColor(.blue)

                    })

                })
            .navigationTitle("Home")


        }
    }
}

struct AnimationPage : View{
    
    @State var black = Color.primary.opacity(0.7)
    @Environment(\.presentationMode) var present
    
    var body: some View{
       
        VStack{
            HStack{
                
                LottieView(animationName: "cat")
                    .frame(width: 400, height: 400)
               
            }
            .padding(.horizontal,50)
        }
        .navigationTitle("Animation")
    }
}

struct LottieView : UIViewRepresentable {
    
    
    
    var animationName : String
    
    func makeUIView(context: Context) -> LottieAnimationView{
        let view = LottieAnimationView(name: animationName,bundle: Bundle.main)
        
        view.loopMode = .loop
        view.play()
        
        return view
    }
    
    func updateUIView(_ uiView: Lottie.LottieAnimationView, context: Context) {
    }
    
}

