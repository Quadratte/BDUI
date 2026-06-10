import SwiftUI

final class MainBannerCollectionViewCell: UICollectionViewCell {
    
    private var hostingController: UIHostingController<MainBannerView>?
    
    func configure(
        imageLink: String,
        title: String,
        caption: String
    ) {
        guard hostingController == nil else { return }
        let mainBannerView = MainBannerView(
            imageLink: imageLink,
            title: title,
            caption: caption)
        
        hostingController = UIHostingController(rootView: mainBannerView)
        guard let hostingController = hostingController else { return }
        
        contentView.addSubview(hostingController.view)
        hostingController.view.clipsToBounds = true
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            hostingController.view.topAnchor.constraint(equalTo: contentView.topAnchor),
            hostingController.view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
    }
}
