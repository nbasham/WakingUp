import SwiftUI

struct WakingUpView: View {
    let models: [WakingUpModel]

    var body: some View {
        ScrollView {
            ForEach(models) { model in
                Text(model.title)
            }
        }
    }
}

#Preview {
    WakingUpView(models: [])
}
