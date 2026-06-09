import SwiftUI

final class MainBannerCollectionViewCell: UICollectionViewCell {
    
    private var hostingController: UIHostingController<MainBannerView>!
    
    func configure(
        imageLink: String,
        title: String,
        caption: String
    ) {
        guard hostingController == nil else { return }
        let mainBannerView = MainBannerView(
            imageLink: imageLink,
            title: title,
            captopn: caption)
        
        hostingController = UIHostingController(rootView: mainBannerView)
        guard let hostingController = hostingController else { return }
        
        addSubview(hostingController.view)
        hostingController.view.clipsToBounds = true
        
        hostingController.view.frame = superview?.bounds ?? CGRect(x: 0, y: 0, width: 0, height: 0)
        
    }
}
