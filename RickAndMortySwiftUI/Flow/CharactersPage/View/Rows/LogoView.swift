import SwiftUI

struct LogoView: View {
    
    var body: some View {
        Image("Logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 262)
    }
}
