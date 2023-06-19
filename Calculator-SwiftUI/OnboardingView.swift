//
//  
//  Calculator-SwiftUI
//
//  Created by Deniz Hacioglu on 24/08/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var didAppStart = false
    
    var body: some View {
        ZStack
        {
            LinearGradient(colors: [.cyan, .blue],
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 20) {
                Text("iOS Final Project\nMade by Muntasir Al Abid")
                    .foregroundColor(.white)
                    .padding()
                    .font(.system(size: 28, weight: .semibold))
                
                Text("Student no: 391820")
                    .foregroundColor(.white)
                    .padding()
                    .font(.system(.title))
                
                Button
                {
                    didAppStart.toggle()
                } label:
                {
                    Text("Start")
                        .font(.title)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 4)
                            .stroke(.white, lineWidth: 4)
                            .frame(width: 350, height: 60))
                }
                .fullScreenCover(isPresented: $didAppStart) {
                    ContentView()
                }
                
            }
            
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
