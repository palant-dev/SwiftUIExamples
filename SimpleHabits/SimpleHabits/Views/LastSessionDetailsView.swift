//
//  LastSessionDetailsView.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 09/10/23.
//

import SwiftUI

struct LastSessionDetailsView: View {
    @State var detailsPickerSelection: detailsViewsOfPicker = .sessionsList

    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .frame(minHeight: 200)
                .overlay {
                    ZStack {
                        Image("demo-meditation")
                            .resizable()
                            .scaledToFill()
                        LinearGradient(colors: [.clear, .gray.opacity(0.9)], startPoint: .init(x: 0, y: 0.0), endPoint: UnitPoint(x: 0, y: 0.9))
                    }
                    .clipped()
                }
            Rectangle()
                .foregroundStyle(.detailsViewPickerBg)
                .frame(height: 90)
                .overlay {
                    VStack {
                        Spacer()
                        Picker("PickerDetails", selection: $detailsPickerSelection) {
                            ForEach(detailsViewsOfPicker.allCases) { view in
                                Text(view.rawValue)
                            }
                        }
                        .pickerStyle(.segmented)
                        .padding(.horizontal)
                    }
                }
            

                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        Text(DetailsOfSessionModel.example.categoryName)
                            .font(.title2.bold())

                        HStack {
                            Image(systemName: "beats.headphones")
                            Text(String(DetailsOfSessionModel.example.numberOfPlays))
                        }
                        Text(DetailsOfSessionModel.example.description)
                        }
                    .padding()

                    ForEach(Array(DetailsOfSessionModel.example.listOfRecordings.enumerated()), id: \.offset) { index, recording in
                            Button {
                                //
                            } label: {
                                HStack {
                                    Text(String(index + 1))
                                        .bold()

                                    Text(recording).lineLimit(1)
                                        .bold()

                                    Spacer()

                                    Text("5 min")
                                        .opacity(0.6)
                                }

                            }
                            .padding()
                        }
                }
                .foregroundColor(.white)
                .padding()
        }
        .background {
            Color(.background).ignoresSafeArea()
        }
        .preferredColorScheme(.dark)
    }
}



#Preview {
    LastSessionDetailsView()
}
