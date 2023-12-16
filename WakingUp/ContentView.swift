import SwiftUI

struct ContentView: View {
    let models: [WakingUpModel]

    var body: some View {
        VStack {
            WakingUpView(models: models)
        }
        .padding()
    }
}

#Preview {
    ContentView(models: [])
}
