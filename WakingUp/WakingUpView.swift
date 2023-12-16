import SwiftUI

struct WakingUpView: View {
    let models: [WakingUpModel]

    var body: some View {
        ScrollView {
            ForEach(models) { model in
                HStack {
                    Text(model.title)
                    Spacer()
                    Text(model.date.formatted(date: .abbreviated, time: .omitted))
                    Spacer()
                    Text("\(model.duration)")
                }
            }
        }
        .padding()
    }
}

#Preview {
    WakingUpView(models: WakingUpModel.load())
}
