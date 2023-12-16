import SwiftUI

struct WakingUpView: View {
    let models: [WakingUpModel]

    var body: some View {
        ScrollView {
            ForEach(models) { model in
                HStack {
                    GeometryReader { geometry in
                        Text(model.title)
                            .frame(width: geometry.size.width, alignment: .leading)
                            .lineLimit(1)
                            .truncationMode(.tail)
                    }
                    Spacer()
                    Text(model.date.formatted(date: .numeric, time: .omitted))
                        .fixedSize()
                    Spacer()
                    Text("\(model.duration)")
                        .fixedSize()
                }
                .lineLimit(1)
            }
        }
        .padding()
    }
}

#Preview {
    WakingUpView(models: WakingUpModel.load())
}
