import SwiftUI

struct WakingUpView: View {
    let models: [WakingUpModel]

    var body: some View {
        List {
            HStack {
                Text("Title")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Date")
                    .font(.headline)
                    .frame(alignment: .leading)
                Text("Secs")
                    .font(.headline)
            }
            ForEach(models) { model in
                WakingUpRow(model: model)
            }
        }
    }

    struct WakingUpRow: View {
        let model: WakingUpModel

        var body: some View {
            HStack {
                Text(model.title)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(model.date.formatted(date: .numeric, time: .omitted))
                Text("\(model.duration)")
            }
        }
    }
}

#Preview {
    WakingUpView(models: WakingUpModel.load())
}
