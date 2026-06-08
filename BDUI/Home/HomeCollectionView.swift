import UIKit

final class HomeCollectionView: UICollectionView {
   
    init() {
        super.init(frame: .zero,
                   collectionViewLayout: UICollectionViewFlowLayout())
        
        setupCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCollectionView() {
        backgroundColor = .green
    }
}
