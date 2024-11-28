import SwiftUI

struct CharacterRow: View {
    
    @State var imageURL: URL?
    @State var name: String
    @State var specie: String
    @State var statusAndLocation: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.hex0D7C85)
                .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.hexEBFF6E, lineWidth: 3))
                .padding()
            
            VStack(spacing: 16) {
                AsyncImage(url: imageURL) { phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                    case .failure:
                        Circle()
                            .frame(width: 150, height: 150)
                            .foregroundColor(.gray)
                    case .empty:
                        ProgressView()
                            .frame(width: 150, height: 150)
                    }
                }
                
                Text(name)
                    .font(.title)
                    .foregroundColor(.hexEBFF6E)
                    .multilineTextAlignment(.center)
                
                Text(specie)
                    .font(.title2)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text(statusAndLocation)
                    .font(.title3)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .padding(.horizontal)
                
                Spacer(minLength: 200)
            }
        }
    }
}


#Preview {
    CharacterRow(imageURL: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ16ebWOucyvDo1tMPVrM7fVFyUSVSecT3A719w_dMpzxlped8A3yj3vu_wcvG0tktKdH0&usqp=CAU"), name: "Diana", specie: "Human", statusAndLocation: "You can find me in Citadel of Ricks")
}
