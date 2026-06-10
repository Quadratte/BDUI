import SwiftUI

struct MainBannerView: View {
    
    let imageLink: String
    let title: String
    let caption: String
    
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: imageLink)) { image
                    in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 160)
                        .clipped()
                } placeholder: {
                    PlaceholderImageView()
                        .frame(height: 160)
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.system(size: 24, weight: .bold, design: .serif))
                    Text(caption)
                        .font(.system(size: 12))
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(2)
                }
                .padding(.leading, 20)
            }
        }
    }
}

struct MainBannerVIew_Previews: PreviewProvider {
    static var previews: some View {
        MainBannerView(
            imageLink: "https://images.unsplash.com/photo-1547658719-da2b51169166?q=80&w=928&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            title: "Title",
            caption: "Caption")
    }
}
